#!/bin/bash

if [ -z ${TFTP_SERVER_IP} ] ; then
  echo "Please set the TFTP_SERVER_IP variable like 192.168.178.141"
  exit 1
fi

echo "Starting dnsmasq ..."
echo "-----------------------------------"

dnsmasq --no-daemon \
        --log-dhcp \
        --dhcp-range=${TFTP_SERVER_IP},proxy \
        --dhcp-no-override \
        --dhcp-option=66,${TFTP_SERVER_IP} \
        --tftp-root=/tftpboot \
        --dhcp-boot=undionly.kkpxe,,${TFTP_SERVER_IP} \
        --pxe-prompt="Apreta F8 per al menu",3 \
        --pxe-service=X86PC,"Arrenca de la xarxa",undionly.kkpxe \
        --port=0