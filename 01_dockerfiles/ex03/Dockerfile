FROM ubuntu

RUN apt-get upgrade -y
RUN apt-get update -y

RUN	apt-get install -y git
RUN apt-get install -y wget

ENV DEBIAN_FRONTEND=noninteractive
RUN	apt-get install postgresql -y
RUN apt-get install postgresql-contrib 

RUN adduser --disabled-login --gecos 'Gogs' git

USER postgres
RUN    /etc/init.d/postgresql start &&\
    psql --command "CREATE USER gogs WITH SUPERUSER PASSWORD 'password';" &&\
    createdb -O gogs gogs

USER git
WORKDIR /home/git/
RUN wget https://dl.gogs.io/0.11.66/gogs_0.11.66_linux_amd64.tar.gz 
RUN tar -xvf gogs_0.11.66_linux_amd64.tar.gz

USER root
COPY ./start_up.sh /
COPY ./app.ini /home/git/gogs/custom/conf/

EXPOSE 3000
WORKDIR /home/git/
ENTRYPOINT [ "sh", "/start_up.sh" ]


##
##	Build:
##		docker build -t wseegers/ex03 .
##
##	Docker run:
##		docker run --name gogs -p 3000:3000 -ti --rm wseegers/ex03
##
