FROM linuxserver/wireguard

ENV INTERFACE=wg0

COPY scripts/check_wireguard.sh /check_wireguard.sh
RUN chmod +x /check_wireguard.sh

CMD ["/check_wireguard.sh"]