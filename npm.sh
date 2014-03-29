apt-get update
apt-get install -y python-software-properties python g++ make
add-apt-repository ppa:chris-lea/node.js
apt-get update
apt-get install -y nodejs

[ -z $(which tty.js) ] && npm install -g tty.js
npm install -g meteorite

sudo -u vagrant tty.js --daemonize --config "/home/vagrant/.tty.js/config.json"