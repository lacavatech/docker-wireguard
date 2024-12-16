   #!/bin/bash

   while true; do
       if ! wg show wg0 | grep -q "latest handshake"; then
           echo "WireGuard connection down. Restarting..."
           wg-quick down wg0
           wg-quick up wg0
       fi
       sleep 60
   done