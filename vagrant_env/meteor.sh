# install meteor
if [ -z $(which meteor) ]
then
  curl https://install.meteor.com/ | sh
fi

mkdir /vagrant/apps
mkdir /home/vagrant/.instacode
mkdir /home/vagrant/.instacode/apps