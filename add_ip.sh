#!/bin/bash
#eg eth0:0
file_name=$1
ipaddr=$2
gateway=$3
netmask=$4
touch /etc/sysconfig/network-scripts/ifcfg-$file_name
echo "DEVICE=eth0:0" >> /etc/sysconfig/network-scripts/ifcfg-$file_name
echo "BOOTPROTO=static" >> /etc/sysconfig/network-scripts/ifcfg-$file_name
echo "ONBOOT=yes" >> /etc/sysconfig/network-scripts/ifcfg-$file_name
echo "IPADDR=$ipaddr" >> /etc/sysconfig/network-scripts/ifcfg-$file_name
echo "GATEWAY=$gateway" >> /etc/sysconfig/network-scripts/ifcfg-$file_name
echo "NETMASK=$netmask" >> /etc/sysconfig/network-scripts/ifcfg-$file_name
ifup ifcfg-$file_name
echo "Done"
