#!/bin/bash
# Script to run TinyEMU with the custom ISO

./tinyemu/temu -m 256 -display none -serial stdio -boot d -cdrom custom-debian-puppy.iso
