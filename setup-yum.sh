#!/bin/bash

sudo swupd bundle-add os-clr-on-clr       #install bundle containing yum

sudo cp /etc/yum.conf /etc/yum.conf.old   #if for some reason you have something there, we'll back it up
sudo rm /etc/yum.conf                     #clear the way for our file

sudo cp yum.conf /etc/                     #copy the yum.conf from this repo

sudo yum update
