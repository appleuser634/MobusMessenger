FROM ruby:3.1.2-bullseye

RUN apt update && apt install -y fish

RUN echo "gem: --no-document" >> ~/.gemrc
RUN gem install rails -v 7.0.4
RUN gem install bundler -v 2.3.14

WORKDIR /root/MobusMessenger
