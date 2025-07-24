FROM linuxserver/wireguard@sha256:ee2db24277b43ec4e7529e93967dc3cea00a02bf81b749c680b2b102a6e4aa5b

ENV INTERFACE=wg0

COPY scripts/check_wireguard.sh /check_wireguard.sh
RUN chmod +x /check_wireguard.sh

#CMD ["/check_wireguard.sh"]
ENTRYPOINT ["/check_wireguard.sh"]
