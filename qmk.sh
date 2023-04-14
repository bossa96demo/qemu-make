#!/bin/bash
set -e
read -p "disk name to create (ex. fbsd.img): " disk
read -p "size of the disk (ex. 20G): " size
qemu-img create -f qcow2 $name $size
read -p "iso name (ex. cd73.iso):" iso
read -p "amount of ram (ex. 4G): " mem
qemu-system-x86_64 -hda $disk -cdrom $iso -m $mem
