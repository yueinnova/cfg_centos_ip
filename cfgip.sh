#!/bin/bash

# 1st para: ip
# 2nd para: hostname

# adjust ip
sed -i "16c IPADDR=$1" /etc/sysconfig/network-scripts/ifcfg-enp0s8 &&

# adjust hostname
sed -i "1c $2" /etc/hostname &&

# adjust hosts
sed -i "1c $1   localhost $2 localhost4 localhost4.localdomain4" &&

# restart network service
service network restart
