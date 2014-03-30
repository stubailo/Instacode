#!/bin/bash

sudo mkdir /tmp/instacode_install
cd /tmp/instacode_install

[ -z $(which brew) ] && ruby -e "$(curl -fsSL https://raw.github.com/Homebrew/homebrew/go/install)"
brew install git


wget http://download.virtualbox.org/virtualbox/4.3.10/VirtualBox-4.3.10-93012-OSX.dmg
hdiutil mount VirtualBox-4.3.10-93012-OSX.dmg
sudo installer -package "/Volumes/VirtualBox/VirtualBox.pkg" -target "/Volumes/Macintosh HD"
hdiutil unmount "/Volumes/VirtualBox"

wget --no-check-certificate https://dl.bintray.com/mitchellh/vagrant/vagrant_1.5.1.dmg
mv *vagrant*.dmg vagrant.dmg
hdiutil mount vagrant.dmg
sudo installer -package "/Volumes/Vagrant/Vagrant.pkg" -target "/Volumes/Macintosh HD"
hdiutil unmount "/Volumes/Vagrant"

wget --no-check-certificate https://github.com/adobe/brackets/releases/download/sprint-37/Brackets.Sprint.37.dmg
mv *Brackets*.dmg* Brackets.dmg
hdiutil mount Brackets.dmg
sudo cp -R "/Volumes/Brackets Sprint 37/" /Applications
hdiutil unmount "/Volumes/Brackets Sprint 37/"

git clone https://github.com/zhangela/instacode-brackets-extensions.git
rm -rf instacode-brackets-extensions/.git*
mv instacode-brackets-extensions/* ~/Library/Application\ Support/Brackets/extensions/user

cd ~/Documents
git clone git@github.com:stubailo/InstaCode.git
