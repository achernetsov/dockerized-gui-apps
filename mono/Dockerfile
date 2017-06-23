# image to run pure .net apps using mono only https://askubuntu.com/a/493504/198724
FROM achernetzov/nvidia

#http://www.mono-project.com/download/
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF \
&& echo "deb http://download.mono-project.com/repo/ubuntu xenial main" \
 | tee /etc/apt/sources.list.d/mono-official.list \
&& apt-get update \
&& apt-get install -y mono-complete sudo
RUN apt-get install -y mono-vbnc

# as in wine image, to not bother with volume security
RUN echo 'wine ALL = NOPASSWD: ALL' > /etc/sudoers.d/wine && chmod 0440 /etc/sudoers.d/wine

RUN adduser --disabled-password --gecos 'wine' wine && \
	usermod -a -G video,audio wine
USER wine
ENV HOME /home/wine
VOLUME /home/wine