#!/bin/bash
while true
do
echo "amount_iron{iron="iron"}" $(cd /root/ironfish/ironfish-cli && yarn ironfish accounts:balance | head -n3 |  awk '{print $6}' | sed 's/\.//g') > /home/exporter/value/2.prom
sleep 30
done
