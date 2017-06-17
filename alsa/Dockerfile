FROM ubuntu:latest

RUN apt-get update && apt-get install --no-install-recommends -y alsa-base

RUN mkdir /sounds

ENTRYPOINT ["aplay"]
