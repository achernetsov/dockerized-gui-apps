FROM achernetsov/nvidia

RUN apt-get install -y wesnoth

RUN apt-get install -y sudo \
&& echo 'gamer ALL = NOPASSWD: ALL' > /etc/sudoers.d/gamer && chmod 0440 /etc/sudoers.d/gamer

RUN adduser --disabled-password --gecos 'gamer' gamer && \
	usermod -a -G video,audio gamer
USER gamer
ENV HOME /home/gamer
VOLUME /home/gamer

CMD ["/bin/bash"]