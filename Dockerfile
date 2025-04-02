FROM linuxserver/wireguard@sha256:0dfaeb571eb3cf438d5c34508d49d7bf29df938d408a92da0448a9e8328a7819

ENV INTERFACE=wg0

COPY scripts/check_wireguard.sh /check_wireguard.sh
RUN chmod +x /check_wireguard.sh

#CMD ["/check_wireguard.sh"]
ENTRYPOINT ["/check_wireguard.sh"]
