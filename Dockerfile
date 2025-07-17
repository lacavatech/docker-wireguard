FROM linuxserver/wireguard@sha256:89af564a0e04c2b936edec9cf45c832e5fb0b497e011076865e1c2666cb05b7e

ENV INTERFACE=wg0

COPY scripts/check_wireguard.sh /check_wireguard.sh
RUN chmod +x /check_wireguard.sh

#CMD ["/check_wireguard.sh"]
ENTRYPOINT ["/check_wireguard.sh"]
