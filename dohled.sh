#!/bin/bash

cas=`date +%T`
echo "Aktuální čas: "$cas

ip=`ifconfig | grep Všesměr | awk -F ":" '{print $2}' | awk -F " " '{print $1}'`
echo "Moje IP: "$ip

rx=`ifconfig eth0 | grep Přijato | awk -F "(" '{print $2}' | awk -F ")" '{print $1}'`
echo "Přijatá data: "$rx

tx=`ifconfig eth0 | grep Přijato | awk -F "(" '{print $3}' | awk -F ")" '{print $1}'`
echo "Odeslaná data: "$tx

echo "<html>" > godovsky.html
echo "<body>">> godovsky.html
echo $cas>> godovsky.html
echo "<br>">> godovsky.html
echo $ip>> godovsky.html
echo "<br>">> godovsky.html
echo $rx>> godovsky.html
echo "<br>">> godovsky.html
echo $tx>> godovsky.html
echo "<br>">> godovsky.html
echo "</body>">>godovsky.html
echo "</html>">>godovsky.html






