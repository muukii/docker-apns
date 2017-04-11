FROM ruby:2.3.0

MAINTAINER Muukii <m@muukii.me>

RUN apt-get -q update
RUN apt-get -q install -y jq
RUN gem install houston
COPY ./script.sh /usr/local/bin/script.sh

ENTRYPOINT ["sh", "/usr/local/bin/script.sh"]

