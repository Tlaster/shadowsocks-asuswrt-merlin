#!/bin/sh

if [ ! -f /tmp/mnt/sda1/myswap.swp ]; then
    #create a 256MB swap file ("count" is in Kilobytes)
    dd if=/dev/zero of=/tmp/mnt/sda1/myswap.swp bs=1k count=2097152‬

    #set up the swap file
    mkswap /tmp/mnt/sda1/myswap.swp
fi

#enable swap
swapon /tmp/mnt/sda1/myswap.swp

echo 20 > /proc/sys/vm/swappiness

#check if swap is on
free
