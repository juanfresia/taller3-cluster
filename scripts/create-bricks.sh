#!/bin/bash
set -x

# Run only on storage nodes
mkdir -p /etc/kubernetes/bricks
mkfs.ext4 /dev/sdc
mount /dev/sdc /etc/kubernetes/bricks

echo "/dev/sdc    /etc/kubernetes/bricks    ext4    defaults    0    0" | sudo tee -a /etc/fstab


