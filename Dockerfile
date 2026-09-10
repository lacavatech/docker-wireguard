FROM linuxserver/wireguard@sha256:dca67384e3e9a5bcc288461fa983e6fcb0e248e5a2d8e5b3e5d3f753bfac3e35

ENV INTERFACE=wg0

COPY scripts/check_wireguard.sh /check_wireguard.sh
RUN chmod +x /check_wireguard.sh

#CMD ["/check_wireguard.sh"]
ENTRYPOINT ["/check_wireguard.sh"]
