FROM debian:latest

ARG TS3_ARCHIVE=teamspeak3-server_linux_amd64-3.3.1.tar.bz2
ARG INSTALL_URL=http://dl.4players.de/ts/releases/3.3.1/$TS3_ARCHIVE
ARG TS3_PATH=/ts3server

ENV TS3_PATH=$TS3_PATH

RUN set -e; \
 apt update; \
 apt upgrade; \
 apt install -y wget; \
 apt install -y bzip2;

RUN set -e; \
 wget $INSTALL_URL; \
 mkdir $TS3_PATH; \
 tar -xf teamspeak3-server*.tar.bz2 --strip-components 1 -C $TS3_PATH; \
 rm $TS3_ARCHIVE;

ENV TS3SERVER_LICENSE=accept

EXPOSE 9987/udp
EXPOSE 30033
EXPOSE 10011

ENTRYPOINT sh $TS3_PATH/ts3server_minimal_runscript.sh start

##
##	Build:
##		docker build . --tag wtc/ex01
##
##	Docker run:
##		docker run -ti --rm -p 9987:9987/udp -p 30033:30033 -p 10011:10011 wtc/ex01
##