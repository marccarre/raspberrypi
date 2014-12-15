raspberrypi
===========

Various scripts and utilities for my Raspberry Pi.


Reminder / Useful commands:


    $ diskutil list
    $ diskutil unmountDisk /dev/disk1
    $ sudo dd if=/dev/disk1 conv=sync,noerror bs=1m | gzip -c > /path/to/backup.img.gz 

