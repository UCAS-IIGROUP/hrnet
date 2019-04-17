#!/bin/bash
nvidia-docker build -t $USER/pytorch:CUDA8-py27 .
nvidia-docker run --rm -ti --volume=$(pwd):/flownet2-pytorch:rw --workdir=/flownet2-pytorch --ipc=host $USER/pytorch:CUDA8-py27 /bin/bash
