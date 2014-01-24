#!/bin/bash
#
# TITLE:
#   create_xbmc_user.sh
#
# DESCRIPTION:
#   Create and configure the "xbmc" user, to run XBMC.
#
# DEPENDENCIES:
#
# KNOWN BUGS:
#
# AUTHOR:
#   Marc Carre <carre.marc@gmail.com>
#
# CHANGELOG:
#   2014/01/23 (M.C.): Initial version of the script.
#

sudo useradd xbmc
sudo passwd xbmc
# Enter new UNIX password:
# Retype new UNIX password:
# passwd: password updated successfully

sudo usermod -a -G tty xbmc
sudo usermod -a -G plugdev xbmc
sudo usermod -a -G dialout xbmc
sudo usermod -a -G input xbmc
sudo usermod -a -G video xbmc
sudo usermod -a -G audio xbmc

groups xbmc
# xbmc : xbmc tty dialout audio video plugdev input

sudo mkdir /home/xbmc
sudo chown xbmc:xbmc /home/xbmc
usermod -d /home/xbmc xbmc
