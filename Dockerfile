FROM linuxserver/wireguard@sha256:58ba7f17ca63195eecca5192cf069fc0c00e6b0603e91d55f5ab6d00efced5f7

ENV INTERFACE=wg0

COPY scripts/check_wireguard.sh /check_wireguard.sh
RUN chmod +x /check_wireguard.sh

#CMD ["/check_wireguard.sh"]
ENTRYPOINT ["/check_wireguard.sh"]
