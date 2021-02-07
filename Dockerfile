FROM debian:buster

COPY srcs /root/

## nao trava instalacao
ARG DEBIAN_FRONTEND=noninteractive

## remove erros
RUN printf "#!/bin/sh\nexit 0" > /usr/sbin/policy-rc.d

RUN	bash /root/install_server.sh

RUN bash /root/config_server.sh

ENTRYPOINT	bash /root/start_server.sh

CMD bash





