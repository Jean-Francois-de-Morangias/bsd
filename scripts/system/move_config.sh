#!/bin/bash


source ./../sources/user

mv /home/$user/bsd/conf/iptables_start.sh /usr/local/bin
cd /usr/local/bin
chmod +x iptables_start.sh

mv /home/$user/bsd/conf/ipscipt /etc/init.d
cd /etc/init.d
chmod +x ipscript

mv /home/$user/bsd/conf/repositories /etc/apk

mkdir -p /etc/X11/xorg.conf.d
mv /home/$user/bsd/conf/00-keyboard.conf /etc/X11/xorg.conf.d

rc-update add ipscript default
rc-service ipscript start

mv /home/$user/bsd/.config /home/$user
mv /home/$user/bsd/.icons /home/$user
mv /home/$user/bsd/.screenlayout /home/$user
mv /home/$user/bsd/.bashrc /home/$user
mv /home/$user/bsd/.fehbg /home/$user
mv /home/$user/bsd/.gitconfig /home/$user
mv /home/$user/bsd/.xinitrc /home/$user

chown -R $user:wheel /home/$user

