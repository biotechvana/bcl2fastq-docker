#!/bin/bash

A=( "$@" )

docker run --rm --name bcl2fastq\
         -v "$2":/mnt/input \
         -v "$4":/mnt/output \
         bcl2fastq:latest \
             --runfolder-dir /mnt/input \
             --output-dir /mnt/output/ \
             "${A[@]:4}"
