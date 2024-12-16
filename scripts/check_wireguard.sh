   #!/bin/bash

   while true; do
       if ! wg show $interface | grep -q "latest handshake"; then
           echo "WireGuard connection down. Restarting..."
           wg-quick down $interface
           wg-quick up $interface
       fi
       sleep 60
   done