apt-get -y install software-properties-common apt-transport-https

add-apt-repository "deb http://download.webmin.com/download/repository sarge contrib"

cd /root
wget http://www.webmin.com/jcameron-key.asc
apt-key add jcameron-key.asc

apt-get -y update
apt-get -y install webmin
