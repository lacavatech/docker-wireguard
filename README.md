# docker-wireguard
Wireguard container that monitors if the VPN is up. It checks every 60 seconds. 

Based on the Linuxserver wireguard docker. 

Environments can be found at https://docs.linuxserver.io/images/docker-wireguard/#parameters

**The only Environment Variable not listed is INTERFACE, which should be the conf file name without the .conf, default is wg0**

