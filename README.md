# exporterd 
wget https://github.com/derssen/exporterd/blob/main/exporterd.service

wget https://github.com/derssen/exporterd/blob/main/okey.sh

su exporter

mkdir ~/value

touch ~/value/1.prom

sudo cp exporterd.service /etc/systemd/system/

sudo cp okey.sh /usr/local/bin/
