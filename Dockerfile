FROM debian:buster

COPY srcs /root/

RUN	apt-get update && \
	apt-get upgrade && \
	apt-get install -y nginx

ENTRYPOINT	bash /root/start.sh

CMD bash


# ENTRYPOINT ["tail", "-f", "/dev/null"]




