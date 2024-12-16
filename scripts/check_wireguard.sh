   #!/bin/bash

   while true; do
       if ! wg show $INTERFACE | grep -q "interface"; then
           echo "WireGuard connection down. Restarting..."
           wg-quick down $INTERFACE
           wg-quick up $INTERFACE
       fi
       sleep 60
   done