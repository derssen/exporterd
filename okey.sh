#!/bin/bash
function checkIt()
{
 ps auxw | grep -P '\b'$1'(?!-)\b' >/dev/null
 if [ $? != 0 ]
 then
   echo 'okey_porta{okey="okey"} 0' > /home/exporter/value/1.prom;
 else
   echo 'okey_porta{okey="okey"} 1' > /home/exporter/value/1.prom;
 fi;
}

checkIt "portad"
