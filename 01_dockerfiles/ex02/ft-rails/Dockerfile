FROM ruby

RUN set -e; \
 apt-get update; \
 apt-get upgrade -y;
RUN gem update
RUN gem install rails
RUN apt-get install node.js -y

RUN mkdir -p /opt/app
WORKDIR /opt/app

ONBUILD ADD app /opt/app
ONBUILD RUN bundle install --without production
ONBUILD RUN rake db:migrate
