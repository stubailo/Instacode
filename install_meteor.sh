# install meteor
if [ -z $(which meteor) ]
then
  curl https://install.meteor.com/ | sh
fi

# make the first app
[ -f /home/vagrant/app ] && rm -r /home/vagrant/app
meteor create /home/vagrant/app

[ -f /vagrant/app ] && rm -r /vagrant/app
meteor create /vagrant/app

sudo mount --bind /home/vagrant/app/.meteor /vagrant/app/.meteor

cd /vagrant/app
ls
meteor update