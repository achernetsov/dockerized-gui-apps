FROM achernetsov/nvidia

# https://wiki.winehq.org/Ubuntu
RUN apt-get update && apt-get install -y wget software-properties-common apt-transport-https
RUN dpkg --add-architecture i386 \
&& wget -nc https://dl.winehq.org/wine-builds/Release.key \
&& apt-key add Release.key \
&& apt-add-repository https://dl.winehq.org/wine-builds/ubuntu/ \
&& apt-get update \
#&& apt-get install --install-recommends -y winehq-stable
&& apt-get install --install-recommends -y winehq-devel

RUN apt-get install -y sudo \
&& echo 'wine ALL = NOPASSWD: ALL' > /etc/sudoers.d/wine && chmod 0440 /etc/sudoers.d/wine

RUN adduser --disabled-password --gecos 'wine' wine && \
	usermod -a -G video,audio wine
USER wine
ENV HOME /home/wine
VOLUME /home/wine