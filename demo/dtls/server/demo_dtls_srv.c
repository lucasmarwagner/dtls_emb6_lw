/*
 * emb6 is licensed under the 3-clause BSD license. This license gives everyone
 * the right to use and distribute the code, either in binary or source code
 * format, as long as the copyright license is retained in the source code.
 *
 * The emb6 is derived from the Contiki OS platform with the explicit approval
 * from Adam Dunkels. However, emb6 is made independent from the OS through the
 * removal of protothreads. In addition, APIs are made more flexible to gain
 * more adaptivity during run-time.
 *
 * The license text is:
 *
 * Copyright (c) 2015,
 * Hochschule Offenburg, University of Applied Sciences
 * Laboratory Embedded Systems and Communications Electronics.
 * All rights reserved.
 *
 * Redistribution and use in source and binary forms, with or without
 * modification, are permitted provided that the following conditions are met:
 * 1. Redistributions of source code must retain the above copyright notice,
 * this list of conditions and the following disclaimer.
 * 2. Redistributions in binary form must reproduce the above copyright notice,
 *    this list of conditions and the following disclaimer in the documentation
 *    and/or other materials provided with the distribution.
 * 3. The name of the author may not be used to endorse or promote products
 *    derived from this software without specific prior written permission.
 *
 * THIS SOFTWARE IS PROVIDED BY THE AUTHOR ``AS IS'' AND ANY EXPRESS OR IMPLIED
 * WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES OF
 * MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO
 * EVENT SHALL THE AUTHOR BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL,
 * SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO,
 * PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS;
 * OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY,
 * WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR
 * OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF
 * ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
 *
 */
/*============================================================================*/
/**
 * 	 \addtogroup emb6
 * 	 @{
 * 	 \addtogroup demo
 * 	 @{
 *   \addtogroup demo_dtls
 *   @{
 *   \defgroup demo_dtls_server DTLS UDP server
 * 	 @{
*/
/*! \file   demo_dtls_srv.c

 \author Fesseha T. Mamo

 \brief  DTLS UDP Server demo application

 \version 0.0.1
 */
/*============================================================================*/

/*==============================================================================
 INCLUDE FILES
 =============================================================================*/

#include "uip.h"
#include "udp-socket.h"
#include "demo_dtls_srv.h"

#include "tinydtls.h"
#include "dtls.h"
#include "debug.h"

#include "evproc.h"

/*==============================================================================
                                     MACROS
 =============================================================================*/

#define 	LOGGER_ENABLE		LOGGER_DEMO_DTLS
#include	"logger.h"

#define UIP_IP_BUF   ((struct uip_ip_hdr *)&uip_buf[UIP_LLH_LEN])
#ifndef UIP_UDP_BUF
#define UIP_UDP_BUF  ((struct uip_udp_hdr *)&uip_buf[UIP_LLIPH_LEN])
#endif

#define MAX_PAYLOAD_LEN 120
/*==============================================================================
                     LOCAL VARIABLE DECLARATIONS
 =============================================================================*/

static  struct  udp_socket          st_udp_socket;
        struct  udp_socket*         pst_udp_socket;

static dtls_context_t *dtls_context;

static const unsigned char ecdsa_priv_key[] = {
			0xD9, 0xE2, 0x70, 0x7A, 0x72, 0xDA, 0x6A, 0x05,
			0x04, 0x99, 0x5C, 0x86, 0xED, 0xDB, 0xE3, 0xEF,
			0xC7, 0xF1, 0xCD, 0x74, 0x83, 0x8F, 0x75, 0x70,
			0xC8, 0x07, 0x2D, 0x0A, 0x76, 0x26, 0x1B, 0xD4};

static const unsigned char ecdsa_pub_key_x[] = {
			0xD0, 0x55, 0xEE, 0x14, 0x08, 0x4D, 0x6E, 0x06,
			0x15, 0x59, 0x9D, 0xB5, 0x83, 0x91, 0x3E, 0x4A,
			0x3E, 0x45, 0x26, 0xA2, 0x70, 0x4D, 0x61, 0xF2,
			0x7A, 0x4C, 0xCF, 0xBA, 0x97, 0x58, 0xEF, 0x9A};

static const unsigned char ecdsa_pub_key_y[] = {
			0xB4, 0x18, 0xB6, 0x4A, 0xFE, 0x80, 0x30, 0xDA,
			0x1D, 0xDC, 0xF4, 0xF4, 0x2E, 0x2F, 0x26, 0x31,
			0xD0, 0x43, 0xB1, 0xFB, 0x03, 0xE2, 0x2F, 0x4D,
			0x17, 0xDE, 0x43, 0xF9, 0xF9, 0xAD, 0xEE, 0x70};

/*==============================================================================
                           LOCAL FUNCTION PROTOTYPES
 =============================================================================*/

static void dtls_udp_callback(void);

/*==============================================================================
                                LOCAL FUNCTIONS
 =============================================================================*/
static int
read_from_peer(struct dtls_context_t *ctx,
	       session_t *session, uint8 *data, size_t len) {
  size_t i;
  for (i = 0; i < len; i++)
    PRINTF("%c", data[i]);

  /* echo incoming application data */
  dtls_write(ctx, session, data, len);
  return 0;
}

static int
send_to_peer(struct dtls_context_t *ctx,
	     session_t *session, uint8 *data, size_t len) {
  int ret = 0;
  struct udp_socket *st_udp_socket  = (struct udp_socket *)dtls_get_app_data(ctx);

  ret = udp_socket_sendto(st_udp_socket, data, len, &session->addr, session->port);

  return ret;
}

#ifdef DTLS_PSK
/* This function is the "key store" for tinyDTLS. It is called to
 * retrieve a key for the given identity within this particular
 * session. */
static int
get_psk_info(struct dtls_context_t *ctx, const session_t *session,
	     dtls_credentials_type_t type,
	     const unsigned char *id, size_t id_len,
	     unsigned char *result, size_t result_length) {

  struct keymap_t {
    unsigned char *id;
    size_t id_length;
    unsigned char *key;
    size_t key_length;
  } psk[3] = {
    { (unsigned char *)"Client_identity", 15,
      (unsigned char *)"secretPSK", 9 },
    { (unsigned char *)"default identity", 16,
      (unsigned char *)"\x11\x22\x33", 3 },
    { (unsigned char *)"\0", 2,
      (unsigned char *)"", 1 }
  };

  if (type != DTLS_PSK_KEY) {
    return 0;
  }

  if (id) {
    int i;
    for (i = 0; i < sizeof(psk)/sizeof(struct keymap_t); i++) {
      if (id_len == psk[i].id_length && memcmp(id, psk[i].id, id_len) == 0) {
	if (result_length < psk[i].key_length) {
	  dtls_warn("buffer too small for PSK");
	  return dtls_alert_fatal_create(DTLS_ALERT_INTERNAL_ERROR);
	}

	memcpy(result, psk[i].key, psk[i].key_length);
	return psk[i].key_length;
      }
    }
  }

  return dtls_alert_fatal_create(DTLS_ALERT_DECRYPT_ERROR);
}
#endif /* DTLS_PSK */

#ifdef DTLS_ECC
static int
get_ecdsa_key(struct dtls_context_t *ctx,
	      const session_t *session,
	      const dtls_ecdsa_key_t **result) {
  static const dtls_ecdsa_key_t ecdsa_key = {
    .curve = DTLS_ECDH_CURVE_SECP256R1,
    .priv_key = ecdsa_priv_key,
    .pub_key_x = ecdsa_pub_key_x,
    .pub_key_y = ecdsa_pub_key_y
  };

  *result = &ecdsa_key;
  return 0;
}

static int
verify_ecdsa_key(struct dtls_context_t *ctx,
		 const session_t *session,
		 const unsigned char *other_pub_x,
		 const unsigned char *other_pub_y,
		 size_t key_size) {
  return 0;
}
#endif /* DTLS_ECC */

/*---------------------------------------------------------------------------*/
/* todo Use BSD sockets */
static void
dtls_handle_read(dtls_context_t *ctx) {
  session_t session;

  if(uip_newdata()) {
    uip_ipaddr_copy(&session.addr, &UIP_IP_BUF->srcipaddr);
    session.port = UIP_UDP_BUF->srcport;
    session.size = sizeof(session.addr) + sizeof(session.port);

    dtls_handle_message(ctx, &session, uip_appdata, uip_datalen());
  }
}
/*---------------------------------------------------------------------------*/

void
init_dtls() {
  static dtls_handler_t cb = {
    .write = send_to_peer,
    .read  = read_from_peer,
    .event = NULL,
#ifdef DTLS_PSK
    .get_psk_info = get_psk_info,
#endif /* DTLS_PSK */
#ifdef DTLS_ECC
    .get_ecdsa_key = get_ecdsa_key,
    .verify_ecdsa_key = verify_ecdsa_key
#endif /* DTLS_ECC */
  };
#if 0
  uip_ipaddr_t ipaddr;
  /* struct uip_ds6_addr *root_if; */
#endif /* UIP_CONF_ROUTER */

  PRINTF("DTLS server started\n");

#if 0  /* TEST */
  memset(&tmp_addr, 0, sizeof(rimeaddr_t));
  if(get_eui64_from_eeprom(tmp_addr.u8));
#if UIP_CONF_IPV6
  memcpy(&uip_lladdr.addr, &tmp_addr.u8, 8);
#endif
#endif /* TEST */

#if 0
/*   uip_ip6addr(&ipaddr, 0xaaaa, 0, 0, 0, 0, 0, 0, 0); */
/*   uip_ds6_set_addr_iid(&ipaddr, &uip_lladdr); */
/*   uip_ds6_addr_add(&ipaddr, 0, ADDR_AUTOCONF); */

/*   create_rpl_dag(&ipaddr); */
/* #else */
  /* uip_ds6_addr_add(&ipaddr, 0, ADDR_AUTOCONF); */

  uip_ip6addr(&ipaddr, 0xaaaa, 0,0,0,0x0200,0,0,0x0003);
  uip_ds6_addr_add(&ipaddr, 0, ADDR_MANUAL);

  create_rpl_dag(&ipaddr);
#endif /* UIP_CONF_ROUTER */

  /* set the pointer to the udp-socket */
  pst_udp_socket = &st_udp_socket;

  /* new connection with remote host */
  udp_socket_register(pst_udp_socket, NULL, (udp_socket_input_callback_t)dtls_udp_callback);
  udp_socket_bind(pst_udp_socket, 20220);
  PRINTF("Listening on port %u\n", uip_ntohs(pst_udp_socket->udp_conn->lport));

  dtls_set_log_level(DTLS_LOG_DEBUG);

  dtls_context = dtls_new_context(pst_udp_socket);

  if (dtls_context)
    dtls_set_handler(dtls_context, &cb);
}
/*==============================================================================
                            API FUNCTIONS
 =============================================================================*/
/*----------------------------------------------------------------------------*/
/*	demo_dtlsInit() 														  */
/*----------------------------------------------------------------------------*/
int8_t demo_dtlsInit(void)
{
	dtls_init();

	init_dtls();

	if (!dtls_context) {
		dtls_emerg("cannot create context\n");
	}

	return 1;
}

static void dtls_udp_callback(void)
{
	dtls_debug("DTLS callback\r\n");
	dtls_handle_read(dtls_context);
}

/*----------------------------------------------------------------------------*/
/*	                 demo_coapConf() 										  */
/*----------------------------------------------------------------------------*/

uint8_t demo_dtlsConf(s_ns_t* pst_netStack)
{
	uint8_t c_ret = 1;

	/*
	 * By default stack
	 */
    if (pst_netStack != NULL) {
        if (!pst_netStack->c_configured) {
            pst_netStack->hc     = &sicslowpan_driver;
            pst_netStack->llsec   = &nullsec_driver;
            pst_netStack->hmac   = &nullmac_driver;
            pst_netStack->lmac   = &sicslowmac_driver;
            pst_netStack->frame  = &framer_802154;
            pst_netStack->c_configured = 1;
            /* Transceiver interface is defined by @ref board_conf function*/
            /*pst_netStack->inif   = $<some_transceiver>;*/
        } else {
            if ((pst_netStack->hc == &sicslowpan_driver)   &&
                (pst_netStack->llsec == &nullsec_driver)   &&
                (pst_netStack->hmac == &nullmac_driver)    &&
                (pst_netStack->lmac == &sicslowmac_driver) &&
                (pst_netStack->frame == &framer_802154)) {
                /* right configuration */
            }
            else {
                c_ret = 0;
            }
        }
    }
    return (c_ret);
}

/** @} */
/** @} */
/** @} */
/** @} */
