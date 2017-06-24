nvidia-docker run --rm -it \
--device /dev/snd \
--device /dev/nvidia0 \
--device /dev/nvidiactl \
--device /dev/nvidia-modeset \
--device /dev/nvidia-uvm \
--device /dev/nvidia-uvm-tools \
-e DISPLAY=$DISPLAY \
-v /tmp/.X11-unix:/tmp/.X11-unix \
-v $XAUTHORITY:/tmp/.host_Xauthority:ro \
-v /var/run/dbus/system_bus_socket:/var/run/dbus/system_bus_socket:ro \
-v /dev/shm:/dev/shm \
-v /etc/machine-id:/etc/machine-id \
-v /etc/localtime:/etc/localtime \
-v $(pwd)/../wine-home:/home/wine \
--net=host \
--shm-size="4G" \
 achernetsov/winetricks /bin/bash
