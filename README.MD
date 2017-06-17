# overview
docker images to play games on linux, thus, keeping system configuration clean.

## images must follow rules:
1. fine-grained for simple debugging, updating and interchanging

so, if you have amd vide, you can just inherit wine image from amd, and everything should work

2. testable

to avoid running steam, install game, to only found that sound doesn't work, 
every image should have simple test. for example, alsa have playsound.sh to check that sound works.


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

