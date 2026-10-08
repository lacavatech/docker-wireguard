FROM linuxserver/wireguard@sha256:437a490f7afc6969434251351ba47455a3829e71cef9c6172f3f533332d04063

ENV INTERFACE=wg0

COPY scripts/check_wireguard.sh /check_wireguard.sh
RUN chmod +x /check_wireguard.sh

#CMD ["/check_wireguard.sh"]
ENTRYPOINT ["/check_wireguard.sh"]
