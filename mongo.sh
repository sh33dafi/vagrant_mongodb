sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv 7F0CEB10

echo 'deb http://downloads-distro.mongodb.org/repo/ubuntu-upstart dist 10gen' | sudo tee /etc/apt/sources.list.d/mongodb.list

sudo apt-get update

sudo apt-get install -y mongodb-org

sudo sed -i.bak s/"bind_ip = 127.0.0.1"/"#bind_ip = 127.0.0.1"/g /etc/mongod.conf

sudo service mongod restart
