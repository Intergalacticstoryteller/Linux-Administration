#!/bin/bash
#Dean Sheldon
#This program is used to drop netorking information both on your screen and into a file called:
file=networkinfo.txt

#Get Date
d=$(date +%Y-%m-%d)

#Get Computer name
computerName=$(hostname)

#Display Information
echo This file contains the network information for $computerName
echo This infomration was collected: $d

#Setup Network File
echo This file contains the network information for $computerName >> $file
echo This infomration was collected: $d >> $file

#This feature is really here just in case it's needed. Keeping this in the program will require sudo privliges.
#If CentOS
#if [ -f /etc/redhat-release ]; then
#  sudo yum update
#  sudo yum install net-tools
#fi

#If Ubuntu
#if [ -f /etc/lsb-release ]; then
#  sudo apt-get update
#  sudo apt-get install net-tools
#Fi

#Get External IP Address
myip="$(dig +short myip.opendns.com @resolver1.opendns.com)"
printf "\n\nMy WAN/Public IP address: ${myip}"
printf "\n\nMy WAN/Public IP address: ${myip}" >> $file

#Get Internal IP Addresses
ip4=$(/sbin/ip -o -4 addr list eth0 | awk '{print $4}' | cut -d/ -f1)
ip6=$(/sbin/ip -o -6 addr list eth0 | awk '{print $4}' | cut -d/ -f1)
printf "\n$ip4"
printf "\n$ip6"
printf "\n$ip4" >> $file
printf "\n$ip6" >> $file

if [ "$ip4"=="127.0.0.1" ]; then
  echo Interface eth0 is not connected and has the address 127.0.0.1, a loopback address.
else
  echo Interface eth0 has the IPv4 address $ip4
fi
if [ "$ip6"=="::1" ]; then
  echo Interface eth0 IPv6 is not connected and has the address 127.0.0.1, a loopback address.
else
  echo Interface eth0 has the IPv6 address $ip6
fi

lo_ip4=$(/sbin/ip -o -4 addr list lo | awk '{print $4}' | cut -d/ -f1)
lo_ip6=$(/sbin/ip -o -6 addr list lo | awk '{print $4}' | cut -d/ -f1)
printf "\n$lo_ip4"
printf "\n$lo_ip6"
printf "\n$lo_ip4" >> $file
printf "\n$lo_ip6" >> $file

if [ "$lo_ip4"=="127.0.0.1" ]; then
echo Interface lo is not connected and has the address 127.0.0.1, a loopback address.
else
  echo Interface lo has the IPv4 address $lo_ip4
fi
if [ "$lo_ip6"=="::1" ]; then
echo Interface lo is not connected and has the address 127.0.0.1, a loopback address.
else
  echo Interface lo has the IPv6 address $ip6
fi

__='
wlan0_ip4=$(/sbin/ip -o -4 addr list wlan0 | awk '{print $4}' | cut -d/ -f1)
wlan0_ip6=$(/sbin/ip -o -6 addr list wlan0 | awk '{print $4}' | cut -d/ -f1)
echo $wlan0_ip4
echo $wlan0_ip6
echo $wlan0_ip4 >> $file
echo $wlan0_ip6 >> $file

if [ "$wlan0_ip4"=="127.0.0.1" ]; then
echo Interface wlan0 is not connected and has the address 127.0.0.1, a loopback address.
else
  echo Interface wlan0 has the IPv6 address $wlan0_ip4
  fi
if [ "$wlan0_ip6"=="::1" ]; then
echo Interface wlan0 is not connected and has the address 127.0.0.1, a loopback address.
else
  echo Interface wlan0 has the IPv6 address $wlan0_ip6
  fi'

MAC=$(ifconfig eth0 | grep -Eo ..\(\:..\){5})
printf "\n\nHardware Address: $MAC"
printf "\n\nHardware Address: $MAC" >> $file

#Check for open ports - outputs open ports, what's listening, and if programs are using it.
echo Open Ports:
ports=$(netstat -atup)
printf "\n\nYour ports are:\n $ports"
printf "\n\nYour ports are:\n $ports" >> $file