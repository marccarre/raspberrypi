#!/bin/bash
#
# TITLE:
#   temperature.sh
#
# DESCRIPTION:
#   Read and return the CPU temperature, in Celsius degrees.
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

# On Raspbian:
if [ -f /sys/class/thermal/thermal_zone0/temp ]; then
    raw_cpu_temperature = $(cat /sys/class/thermal/thermal_zone0/temp) # e.g. 39007

    integer_part = $(($raw_cpu_temperature/1000))                      # e.g. 39
    remaining_part = $(($raw_cpu_temperature/100))                     # e.g. 390
    decimal_part = $(($remaining_part % $integer_part))                # e.g. 0

    echo $integer_part"."$decimal_part
    exit 0

# On Xbian:
elif [ -f /opt/vc/bin/vcgencmd ]; then
    echo $(/opt/vc/bin/vcgencmd measure_temp | grep -oE "[0-9]+\.[0-9]*")
    exit 0

else
    exit 1
fi
