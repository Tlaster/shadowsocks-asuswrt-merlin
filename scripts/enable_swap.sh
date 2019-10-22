#!/bin/sh

if [ ! -f /tmp/mnt/sda1/myswap.swp ]; then
    dd if=/dev/zero of=/tmp/mnt/sda1/myswap.swp bs=1M count=2048

    mkswap /tmp/mnt/sda1/myswap.swp
fi

#enable swap
swapon /tmp/mnt/sda1/myswap.swp

echo 20 > /proc/sys/vm/swappiness

#check if swap is on
free
