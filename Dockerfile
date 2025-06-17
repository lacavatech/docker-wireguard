FROM linuxserver/wireguard@sha256:6a47538303a74c4c8cd2566d5bca52816856104b9438550d3de9ded3cb5d1235

ENV INTERFACE=wg0

COPY scripts/check_wireguard.sh /check_wireguard.sh
RUN chmod +x /check_wireguard.sh

#CMD ["/check_wireguard.sh"]
ENTRYPOINT ["/check_wireguard.sh"]
