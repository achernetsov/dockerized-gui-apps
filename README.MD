# overview
docker + wine. running windows app on linux and keeping host system clean.

only nvidia and alsa implemented, but you free to contribute and add amd, pulseaudio, etc., following design rules;

steam-os will not be supported; recommended way to install steamos is using flatpak;

# nvidia prerequisites
need to install nvidia-docker: https://github.com/NVIDIA/nvidia-docker/wiki/Installation
need to run for nvidia-docker-plugin for nvidia images to work:
```
sudo nvidia-docker-plugin
# now can run container
cd winetricks
./run.sh
```

# example of running windows steam
1. build and run achernetzov/winetricks
2. init wine prefix, for example: WINEPREFIX="$HOME/win32" WINEARCH=win32 wine wineboot
3. download steam installator: wget https://steamcdn-a.akamaihd.net/client/installer/SteamSetup.exe
4. install steam: WINEPREFIX="$HOME/win32" WINEARCH=win32 wine SteamSetup.exe
5. run steam WINEPREFIX="$HOME/win32" WINEARCH=win32 wine [path to steam.exe inside win32]

you could create wine prefix for specific setup and use shared Steam folder. read wine documentation: https://www.winehq.org/

# design rules:
1. fine-grained for simple debugging, updating and interchanging
2. testable: 
to avoid running steam, install game, to only find that sound doesn't work, 
every image should have simple test. for example, alsa have playsound.sh to check that sound works.

# improvements
1. search for todo's in code
2. maybe need to refactor images hierarchy, it should be decided when amd or pulsaudio will be added

# resources
nvidia driver: https://github.com/NVIDIA/nvidia-docker/wiki/NVIDIA-driver

glxgears "X11 no protocol found" error fix: https://unix.stackexchange.com/a/118826

ms fonts: https://askubuntu.com/questions/86335/installing-other-fonts-on-wine
