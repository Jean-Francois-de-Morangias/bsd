#!/bin/bash


source ./../sources/user

base_path="/home/$user/bsd/scripts"

path_system="$base_path/system"

#exec

#$path_system/network.sh 
#echo "-----> NETWORK SET!"
$path_system/sys.sh
echo "-----> CONFIG MOVED!"
echo "-----> SYSTEM SET AND READY TO GO!"
echo "-----> YOU ARE AWESOME!"
