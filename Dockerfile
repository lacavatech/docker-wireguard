FROM linuxserver/wireguard@sha256:e4a21173bf693470b2d1d5dbb5f3ac25ad95c86fa3e81b9809297be9bef2831f

ENV INTERFACE=wg0

COPY scripts/check_wireguard.sh /check_wireguard.sh
RUN chmod +x /check_wireguard.sh

#CMD ["/check_wireguard.sh"]
ENTRYPOINT ["/check_wireguard.sh"]
