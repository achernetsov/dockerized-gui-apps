FROM ubuntu:latest

RUN apt-get update && apt-get install -y alsa-base

RUN mkdir /sounds

ENTRYPOINT ["aplay"]
