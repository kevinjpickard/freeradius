from ubuntu:16.04
LABEL maintainer 'Kevin Pickard <kevinjpickard@gmail.com>'

WORKDIR /etc/raddb

RUN apt-get update && apt-get upgrade -y && apt-get install -y freeradius

VOLUME \
	/opt/db/

EXPOSE \
	1812/udp \
	1813 \
	18120

