FROM linuxserver/wireguard@sha256:d83e18ec0b430ef6f7151d32e49e9f07f49162cbca8db738eee28ad43999fdd6

ENV INTERFACE=wg0

COPY scripts/check_wireguard.sh /check_wireguard.sh
RUN chmod +x /check_wireguard.sh

#CMD ["/check_wireguard.sh"]
ENTRYPOINT ["/check_wireguard.sh"]
