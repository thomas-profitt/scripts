#!/bin/bash

mkdir /tmp/tempsite/

cp -r /home/tom/.gvfs/tom\ on\ tom-netbook/the-gilded-kludge/* /tmp/tempsite/


sudo rm -r /var/www/*

sudo cp -r /tmp/tempsite/* /var/www/

# DAMN RIGHT THIS WORKS AAAAAAAAAARGH DAMN IT
sudo chmod 0444 /var/www/*
sudo chmod 0555 /var/www/*/

sudo chmod 0444 /var/www/downloads/*
sudo chmod 0444 /var/www/images/*
sudo chmod 0444 /var/www/videos/*
sudo chmod 0444 /var/www/fakeads/*


rm -r /tmp/tempsite/
