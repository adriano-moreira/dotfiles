#!/bin/sh

docker run \
    --name shell \
    -v $PWD:'/home/adriano/scripts' \
    --rm \
    -it \
    shell pwsh
