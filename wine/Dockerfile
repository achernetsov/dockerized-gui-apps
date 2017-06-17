FROM achernetzov/nvidia

# https://wiki.winehq.org/Ubuntu
RUN apt-get update && apt-get install -y wget software-properties-common apt-transport-https
RUN dpkg --add-architecture i386 \
&& wget -nc https://dl.winehq.org/wine-builds/Release.key \
&& apt-key add Release.key \
&& apt-add-repository https://dl.winehq.org/wine-builds/ubuntu/ \
&& apt-get update \
&& apt-get install --install-recommends -y winehq-stable