#!/bin/bash
sudo docker build -t lazyteam/lazydocker \
--build-arg BASE_IMAGE_BUILDER=arm64v8/golang \
--build-arg GOARCH=arm64 \
https://github.com/jesseduffield/lazydocker.git
