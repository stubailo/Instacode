sudo echo "start installation"

mkdir /tmp/instacode_install
cd /tmp/instacode_install

[ -z $(which brew) ] && ruby -e "$(curl -fsSL https://raw.github.com/Homebrew/homebrew/go/install)"
brew install git


sudo wget http://download.virtualbox.org/virtualbox/4.3.10/VirtualBox-4.3.10-93012-OSX.dmg
sudo hdiutil mount VirtualBox-4.3.10-93012-OSX.dmg
sudo installer -package "/Volumes/VirtualBox/VirtualBox.pkg" -target "/Volumes/Macintosh HD"
sudo hdiutil unmount "/Volumes/VirtualBox"

sudo wget --no-check-certificate https://dl.bintray.com/mitchellh/vagrant/vagrant_1.5.1.dmg
sudo mv *vagrant*.dmg vagrant.dmg
sudo hdiutil mount vagrant.dmg
sudo installer -package "/Volumes/Vagrant/Vagrant.pkg" -target "/Volumes/Macintosh HD"
sudo hdiutil unmount "/Volumes/Vagrant"

sudo wget --no-check-certificate https://github.com/adobe/brackets/releases/download/sprint-37/Brackets.Sprint.37.dmg
sudo mv *Brackets*.dmg* Brackets.dmg
sudo hdiutil mount Brackets.dmg
sudo cp -R "/Volumes/Brackets Sprint 37/" /Applications
sudo hdiutil unmount "/Volumes/Brackets Sprint 37/"

git clone https://github.com/zhangela/instacode-brackets-extensions.git
sudo rm -rf instacode-brackets-extensions/.git*
sudo mv instacode-brackets-extensions/* ~/Library/Application\ Support/Brackets/extensions/user

cd ~/app1
git clone git@github.com:stubailo/InstaCode.git



