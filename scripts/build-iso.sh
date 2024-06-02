#!/bin/bash
# Script to build the custom Debian 12 Puppy Linux ISO

# Install base system
debootstrap --arch=amd64 bullseye /mnt/debian http://deb.debian.org/debian

# Customize the system (example steps)
chroot /mnt/debian apt-get install -y puppy-tools
chroot /mnt/debian apt-get clean

# Create ISO
genisoimage -o custom-debian-puppy.iso /mnt/debian
