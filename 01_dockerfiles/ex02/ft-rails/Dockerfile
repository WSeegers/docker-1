FROM ruby:2.4.1

RUN set -e; \
 apt update; \
 apt upgrade -y;
Run gem update
RUN gem install rails
RUN apt install node.js -y

RUN mkdir -p /opt/app
WORKDIR /opt/app

ONBUILD ADD app /opt/app
ONBUILD RUN bundle install
ONBUILD RUN rake db:migrate
