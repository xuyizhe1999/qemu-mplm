#!/bin/bash
binloc=/home/kasidit/qemu-mplm-bin/bin
imgloc=/home/kasidit/images
#
sudo ${binloc}/qemu-system-x86_64 -enable-kvm -cpu host -smp 4 -m 16G \
  -drive file=${imgloc}/ubuntu1604qcow2.img,format=qcow2 -boot c -vnc :95 \
  -monitor tcp::9666,server,nowait \
  -net nic -net user \
  -localtime > migreport.txt &