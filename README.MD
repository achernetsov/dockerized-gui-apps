# overview
docker images to play games on linux, thus, keeping system configuration clean.

for now only nvidia and alsa implemented, but you free to contribute amd, pulseaudio, etc., following design rules;

windows steam (steam + wine) works (instructions will be soon)

steam-os will not be supported; goals of this repo achieved install steam using flatpak;

## not working / in progress...
1. steam-os failed on loading steam
2. proper security for wine-data

## images must follow rules:
1. fine-grained for simple debugging, updating and interchanging
2. testable: 
to avoid running steam, install game, to only find that sound doesn't work, 
every image should have simple test. for example, alsa have playsound.sh to check that sound works.

# nvidia
## prerequisites
need to install nvidia-docker: https://github.com/NVIDIA/nvidia-docker/wiki/Installation
need to run for nvidia-docker to work:
```
sudo nvidia-docker-plugin
```

# images hierarchy
1. alsa
2. nvidia:alsa

for steam-os games:

3. steamos:nvidia
4. game-specific:steamos

for windows-only games:

3. wine:nvidia
4. steamwin:wine
5. game-specific:steamwin

# improvements
1. search for todo's in code
2. maybe need to revert images: first steam then nvidia and alsa? from common to specific

# resources
nvidia driver: https://github.com/NVIDIA/nvidia-docker/wiki/NVIDIA-driver

glxgears "X11 no protocol found" error fix: https://unix.stackexchange.com/a/118826

ms fonts: https://askubuntu.com/questions/86335/installing-other-fonts-on-wine

# acknowledgements
https://github.com/arno01/steam - some of steam-os work derived from here
