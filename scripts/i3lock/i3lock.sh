#!/bin/bash


source ./../sources/user

magick /home/$user/minimal/automat.jpg -resize 2560x1440^ -gravity center -extent 2560x1440 /home/$user/lockscreen.png
i3lock -i /home/$user/lockscreen.png
