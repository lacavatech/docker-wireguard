FROM linuxserver/wireguard@sha256:7792dcef56c51e6b4d499a209e980ed74309bf3bee6af12168ea02bf289eddd9

ENV INTERFACE=wg0

COPY scripts/check_wireguard.sh /check_wireguard.sh
RUN chmod +x /check_wireguard.sh

#CMD ["/check_wireguard.sh"]
ENTRYPOINT ["/check_wireguard.sh"]
