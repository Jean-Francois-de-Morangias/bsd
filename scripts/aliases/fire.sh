#!/bin/bash


source ./../sources/user

sslocal -c /home/$user/user_files/.u_config/shadowsocks/shadowsocks-arch.json &
sleep 1
proxychains firefox
