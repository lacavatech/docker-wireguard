FROM linuxserver/wireguard@sha256:039aab5f3c0eb584c9195f0d5414104a6521855c5e5e9812777a8ce61d56b2c6

ENV INTERFACE=wg0

COPY scripts/check_wireguard.sh /check_wireguard.sh
RUN chmod +x /check_wireguard.sh

#CMD ["/check_wireguard.sh"]
ENTRYPOINT ["/check_wireguard.sh"]
