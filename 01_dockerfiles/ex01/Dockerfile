FROM debian:latest

RUN set -e; \
 apt-get update; \
 apt-get upgrade -y; \
 apt-get install -y wget; \
 apt-get install -y bzip2;

ARG TS3_ARCHIVE=teamspeak3-server_linux_amd64-3.8.0.tar.bz2
ARG INSTALL_URL=http://dl.4players.de/ts/releases/3.8.0/$TS3_ARCHIVE
ARG TS3_PATH=/ts3server

ENV TS3_PATH=$TS3_PATH

RUN set -e; \
 wget $INSTALL_URL; \
 mkdir $TS3_PATH; \
 tar -xf teamspeak3-server*.tar.bz2 --strip-components 1 -C $TS3_PATH; \
 rm $TS3_ARCHIVE;

RUN touch $TS3_PATH/.ts3server_license_accepted

ENV TS3SERVER_LICENSE=accept

EXPOSE 9987/udp
EXPOSE 30033
EXPOSE 10011

ENTRYPOINT sh $TS3_PATH/ts3server_minimal_runscript.sh start

##
##	Build:
##		docker build . --tag wseegers/ex01
##
##	Docker run:
##		docker run -ti --rm -p 9987:9987/udp -p 30033:30033 -p 10011:10011 wseegers/ex01
##
