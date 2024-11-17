#!/bin/bash


source ./../sources/user

/home/$user/bsd/scripts/system/move_config.sh

pkg update && pkg upgrade

xargs pkg install -y < /home/$user/bsd/conf/packages

