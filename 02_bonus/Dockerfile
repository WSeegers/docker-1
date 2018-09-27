FROM openjdk:11

RUN apt-get update -y
RUN apt-get upgrade -y
RUN apt-get install expect -y


WORKDIR /usr/local
RUN wget http://mcmyadmin.com/Downloads/etc.zip
RUN unzip etc.zip; rm etc.zip

RUN mkdir /root/McMyAdmin
WORKDIR /root/McMyAdmin
COPY ./setup.sh ./
RUN wget http://mcmyadmin.com/Downloads/MCMA2_glibc26_2.zip
RUN unzip MCMA2_glibc26_2.zip && rm MCMA2_glibc26_2.zip
RUN sh ./setup.sh
RUN	configonly

# RUN ./MCMA2_Linux_x86_64

# WORKDIR /minecraft
# RUN wget https://launcher.mojang.com/v1/objects/fe123682e9cb30031eae351764f653500b7396c9/server.jar
# RUN echo "eula=true" > eula.txt

EXPOSE 25565
EXPOSE 8080
# ENTRYPOINT java -Xmx1024M -Xms1024M -jar server.jar nogui
