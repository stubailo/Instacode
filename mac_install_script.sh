mkdir /tmp/instacode_install
cd /tmp/instacode_install

[ -z $(which brew) ] && ruby -e "$(curl -fsSL https://raw.github.com/Homebrew/homebrew/go/install)"

curl http://download.virtualbox.org/virtualbox/4.3.10/VirtualBox-4.3.10-93012-OSX.dmg
curl https://dl.bintray.com/mitchellh/vagrant/vagrant_1.5.1.dmg

brew install git

hdiutil mount VirtualBox-4.3.10-93012-OSX.dmg

