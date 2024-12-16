#!/bin/bash

export `xargs --null --max-args=1 echo < /proc/1/environ`

INTERFACE_CHECK=$INTERFACE

echo "Interface: ${INTERFACE}"
echo "Interface Check: ${INTERFACE_CHECK}"

while true; do
   if ! wg show $INTERFACE_CHECK | grep "listening"; then
        echo "WireGuard connection down. Restarting...${INTERFACE_CHECK}"
        wg-quick down $INTERFACE_CHECK
        wg-quick up $INTERFACE_CHECK
   
   else
   echo "WireGuard connection up....${INTERFACE_CHECK}"
   fi

     sleep 60
 done