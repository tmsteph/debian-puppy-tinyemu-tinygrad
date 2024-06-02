# Dockerfile for building the custom Debian 12 Puppy Linux ISO

FROM debian:bullseye

RUN apt-get update && apt-get install -y \
    debootstrap \
    genisoimage \
    gcc \
    make \
    git \
    python3 \
    python3-pip

WORKDIR /workspace
COPY . /workspace

RUN chmod +x scripts/*.sh
