from ubuntu:16.04
LABEL maintainer 'Kevin Pickard <kevinjpickard@gmail.com>'

WORKDIR /etc/raddb

RUN apt update && apt upgrade -y && apt install -y freeradius

VOLUME \
	/opt/db/

EXPOSE \
	1812/udp \
	1813 \
	18120

CMD ["radiusd","-xx","-f"]
