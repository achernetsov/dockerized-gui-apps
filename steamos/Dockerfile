FROM achernetzov/nvidia

#TODO optimize, try --no-install-recommends
RUN echo "deb [arch=amd64,i386] http://repo.steampowered.com/steam/ precise steam" >> /etc/apt/sources.list \
&& apt-key adv --keyserver keyserver.ubuntu.com --recv-keys F24AEA9FB05498B7 \
&& dpkg --add-architecture i386 \
&& apt-get update && apt-get install -y sudo steam-launcher

# libraries that steam-launcher tries to install
RUN apt-get install -y libgl1-mesa-dri:i386 libgl1-mesa-glx:i386 libc6:i386 \
 libxtst6:i386 libxrandr2:i386 libglib2.0-0:i386 libgtk2.0-0:i386 \
 libpulse0:i386 libgdk-pixbuf2.0-0:i386 \ 
 # fix https://support.steampowered.com/kb_article.php?ref=9205-OZVN-0660
 libopenal1:i386 libsm6:i386 libice6:i386 \
 # fix missing libs
 libnss3 libxss1 libgconf-2-4

RUN echo 'steam ALL = NOPASSWD: ALL' > /etc/sudoers.d/steam && chmod 0440 /etc/sudoers.d/steam

RUN adduser --disabled-password --gecos 'Steam' steam && \
	usermod -a -G video,audio steam
USER steam
ENV HOME /home/steam
VOLUME /home/steam

ENV STEAM_RUNTIME 0

CMD ["steam"]

