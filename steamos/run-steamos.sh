# create steam-data in this directory. steam files will be here 

xhost +
nvidia-docker run --rm -it \
--device /dev/snd \
-e DISPLAY=$DISPLAY \
-v /tmp/.X11-unix:/tmp/.X11-unix \
-v $XAUTHORITY:/tmp/.host_Xauthority:ro \
-v $(pwd)/steam-data/:/home/steam/ \
-v /var/run/dbus/system_bus_socket:/var/run/dbus/system_bus_socket:ro \
-v /dev/shm:/dev/shm \
-v /etc/machine-id:/etc/machine-id \
--net=host \
--shm-size="4G" \
 achernetzov/steamos /bin/bash
