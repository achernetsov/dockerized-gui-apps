nvidia-docker run --rm -it \
--device /dev/nvidia0 \
--device /dev/nvidiactl \
--device /dev/nvidia-modeset \
--device /dev/nvidia-uvm \
--device /dev/nvidia-uvm-tools \
-e DISPLAY=$DISPLAY \
-v /tmp/.X11-unix:/tmp/.X11-unix \
-v $XAUTHORITY:/tmp/.host_Xauthority:ro \
-v /dev/shm:/dev/shm \
-v $(pwd)/data:/home/user \
--net=host \
--shm-size="4G" \
 achernetsov/gimp
