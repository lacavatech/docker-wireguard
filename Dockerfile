FROM linuxserver/wireguard@sha256:c355c5e519c79421adcad67be48e597083c6eaf103339076d30174d22c30124c

ENV INTERFACE=wg0

COPY scripts/check_wireguard.sh /check_wireguard.sh
RUN chmod +x /check_wireguard.sh

#CMD ["/check_wireguard.sh"]
ENTRYPOINT ["/check_wireguard.sh"]
