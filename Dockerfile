FROM linuxserver/wireguard@sha256:208ee01a5e0ed7405bff04689ccf4c574cbe705aa1a4d910eea3367ea4334889

ENV INTERFACE=wg0

COPY scripts/check_wireguard.sh /check_wireguard.sh
RUN chmod +x /check_wireguard.sh

#CMD ["/check_wireguard.sh"]
ENTRYPOINT ["/check_wireguard.sh"]
