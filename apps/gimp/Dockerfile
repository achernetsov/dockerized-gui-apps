FROM achernetsov/nvidia

RUN apt-get install -y gimp

RUN apt-get install -y sudo \
&& echo 'user ALL = NOPASSWD: ALL' > /etc/sudoers.d/user && chmod 0440 /etc/sudoers.d/user

RUN adduser --disabled-password --gecos 'user' user && \
	usermod -a -G video user
USER user
ENV HOME /home/user
VOLUME /home/user

CMD ["gimp"]