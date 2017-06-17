# TODO fix: need to remove ~/.cache/wesnoth before running

xhost +
nvidia-docker run --rm -it \
--device /dev/snd \
-e DISPLAY=$DISPLAY \
-v /tmp/.X11-unix:/tmp/.X11-unix \
-v $XAUTHORITY:/tmp/.host_Xauthority:ro \
--net=host \
 achernetzov/wesnoth /bin/bash
