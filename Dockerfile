FROM linuxserver/wireguard@sha256:1224125679b8f4f48808ccbb4eb138af25f945ca375e0f63576d64ea15bebf62

ENV INTERFACE=wg0

COPY scripts/check_wireguard.sh /check_wireguard.sh
RUN chmod +x /check_wireguard.sh

#CMD ["/check_wireguard.sh"]
ENTRYPOINT ["/check_wireguard.sh"]
