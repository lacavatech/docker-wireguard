FROM linuxserver/wireguard@sha256:b5010a1c2eca2cde4f287d65d31e6562032399c59d06c3ac2487d06586b6c10f

ENV INTERFACE=wg0

COPY scripts/check_wireguard.sh /check_wireguard.sh
RUN chmod +x /check_wireguard.sh

#CMD ["/check_wireguard.sh"]
ENTRYPOINT ["/check_wireguard.sh"]
