FROM linuxserver/wireguard@sha256:ae0a555aa5cebfc9d510c8a7b439e210db2556e36757d10f2989b850a5e63b81

ENV INTERFACE=wg0

COPY scripts/check_wireguard.sh /check_wireguard.sh
RUN chmod +x /check_wireguard.sh

#CMD ["/check_wireguard.sh"]
ENTRYPOINT ["/check_wireguard.sh"]
