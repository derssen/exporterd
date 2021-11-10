# exporterd 

su exporter

wget https://github.com/prometheus/node_exporter/releases/download/v1.2.0/node_exporter-1.2.0.linux-amd64.tar.gz && \
tar xvf node_exporter-1.2.0.linux-amd64.tar.gz && \
rm node_exporter-1.2.0.linux-amd64.tar.gz && \
sudo mv node_exporter-1.2.0.linux-amd64 node_exporter && \
chmod +x $HOME/node_exporter/node_exporter && \
sudo mv $HOME/node_exporter/node_exporter /usr/bin && \
sudo rm -Rvf $HOME/node_exporter/

wget https://github.com/derssen/exporterd/blob/main/exporterd.service

wget https://github.com/derssen/exporterd/blob/main/okey.sh

wget https://github.com/derssen/exporterd/blob/main/okey.service

mkdir ~/value

touch ~/value/1.prom

sudo cp exporterd.service /etc/systemd/system/ 

sudo cp okey.service /etc/systemd/system/ 

sudo cp okey.sh /usr/local/bin/ && sudo chmod +x /usr/local/bin/okey.sh

sudo systemctl daemon-reload && sudo systemctl enable exporterd && sudo systemctl restart exporterd && sudo systemctl enable okey && sudo systemctl restart okey
