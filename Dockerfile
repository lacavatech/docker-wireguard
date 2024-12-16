FROM linuxserver/wireguard

COPY scripts/check_wireguard.sh /check_wireguard.sh
RUN chmod +x /check_wireguard.sh

CMD ["/check_wireguard.sh"]