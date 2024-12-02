#!/bin/tcsh


set unit=`cat /dev/sndstat | grep USB | awk '{for(i=1;i<=NF;i++) if($i ~ /pcm/) print $i}' | sed 's/^...//; s/.$//'`

echo "hw.snd.default_unit=$unit" >> /etc/sysctl.conf
