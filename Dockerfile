FROM ruby:2.3-slim

RUN apt-get update && apt-get install -qq -y --no-install-recommends \
      build-essential nodejs

ENV INSTALL_PATH /usr/src/app

ADD . $INSTALL_PATH
WORKDIR $INSTALL_PATH

RUN bundle install
