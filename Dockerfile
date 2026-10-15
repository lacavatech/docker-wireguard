FROM linuxserver/wireguard@sha256:6bcf5d2f5a265c7e9835eaadd989938e681aabe8bf8bcd4556b61d463da6555c

ENV INTERFACE=wg0

COPY scripts/check_wireguard.sh /check_wireguard.sh
RUN chmod +x /check_wireguard.sh

#CMD ["/check_wireguard.sh"]
ENTRYPOINT ["/check_wireguard.sh"]
