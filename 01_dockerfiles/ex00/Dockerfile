FROM alpine:latest
RUN set -e; \
 apk update; \
 apk upgrade; \
 apk add vim;

ENTRYPOINT vim

##
##	Build:
##		docker build . --tag wseeges/ex00
##
##	Docker run:
##		docker run -ti --rm -p 9987:9987/udp -p 30033:30033 -p 10011:10011 wseegers/ex01
##
