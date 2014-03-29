#!/bin/sh

echo "mounting"
sudo mount --bind /home/vagrant/app/.meteor /vagrant/app/.meteor

echo "starting meteor"
meteor