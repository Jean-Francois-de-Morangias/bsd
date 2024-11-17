#!/bin/bash


source ./../sources/user

distr=$1
blk=$2

sudo dd if=/home/$user/user_files/distros/$distr of=$blk bs=4M status=progress && sync
