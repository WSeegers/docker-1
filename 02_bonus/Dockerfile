FROM openjdk:8

RUN apt-get update -y
RUN apt-get upgrade -y

ARG DEBIAN_FRONTEND="noninteractive"

WORKDIR /usr/local
RUN wget http://mcmyadmin.com/Downloads/etc.zip
RUN unzip etc.zip; rm etc.zip

RUN adduser --disabled-login --gecos 'minecraft' mc

USER mc
WORKDIR /home/mc
RUN wget http://mcmyadmin.com/Downloads/MCMA2_glibc26_2.zip
RUN unzip MCMA2_glibc26_2.zip && rm MCMA2_glibc26_2.zip
RUN ./MCMA2_Linux_x86_64 -setpass "password" -nonotice -configonly

EXPOSE 25565
EXPOSE 8080

ENTRYPOINT ./MCMA2_Linux_x86_64 -insane
