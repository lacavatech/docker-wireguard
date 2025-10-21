FROM linuxserver/wireguard@sha256:62f9c06580291baa5c79763062c0631d718114aa3cd3c93f71bc0b08b31fa030

ENV INTERFACE=wg0

COPY scripts/check_wireguard.sh /check_wireguard.sh
RUN chmod +x /check_wireguard.sh

#CMD ["/check_wireguard.sh"]
ENTRYPOINT ["/check_wireguard.sh"]
