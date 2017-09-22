FROM ubuntu:17.04

RUN apt-get update
RUN apt-get install -y cowsay

ADD message /etc/cow/message

ENV PATH="/usr/games:$PATH"
CMD cowsay < /etc/cow/message

