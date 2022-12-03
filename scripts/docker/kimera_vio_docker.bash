#!/bin/bash

xhost +local:root
docker run -it --rm \
    --env="DISPLAY=10.31.65.15:0" \
    --volume="/tmp/.X11-unix:/tmp/.X11-unix:rw" \
   --privileged kimera 
xhost -local:root

# xhost +local:root
# docker run -it --rm \
#     --env="DISPLAY" \
#     --env="QT_X11_NO_MITSHM=1" \
#     --volume="/tmp/.X11-unix:/tmp/.X11-unix:rw" \
#    --privileged kimera 
# xhost -local:root

# xhost +local:root
# docker run -it --rm \
#     --env="DISPLAY=10.31.65.15:0" \    # --env="QT_X11_NO_MITSHM=1" \
#     kimera # --volume="/tmp/.X11-unix:/tmp/.X11-unix:rw" \
# # Disallow X server connection
# xhost -local:root
# --env="QT_X11_NO_MITSHM=1" \