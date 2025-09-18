FROM linuxserver/wireguard@sha256:c9863e07db79437228fa6b174523491abf9c560fb4c273a635214440e7b46c41

ENV INTERFACE=wg0

COPY scripts/check_wireguard.sh /check_wireguard.sh
RUN chmod +x /check_wireguard.sh

#CMD ["/check_wireguard.sh"]
ENTRYPOINT ["/check_wireguard.sh"]
