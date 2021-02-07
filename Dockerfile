FROM debian:buster

COPY srcs /root/

## nao trava instalacao
ARG DEBIAN_FRONTEND=noninteractive

RUN	bash /root/install_server.sh

RUN bash /root/config_server.sh

ENTRYPOINT	bash /root/start_server.sh
