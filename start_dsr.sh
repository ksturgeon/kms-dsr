#!/bin/bash

docker run -it --env-file ./env.list \
   -p 9995:9995 \
   -p 8787:8787 \
   -p 10000-10010:10000-10010 \
   -p 11000-11010:11000-11010 \
   --cap-add SYS_ADMIN \
   --cap-add SYS_RESOURCE \
   --device /dev/fuse \
   --security-opt apparmor:unconfined \
   maprtech/data-science-refinery:v1.1_6.0.0_4.1.0_centos7
