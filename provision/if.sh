#!/bin/bash

cat << EOS | sudo tee /etc/sysconfig/network-scripts/ifcfg-eth1 > /dev/null
DEVICE="eth1"
BOOTPROTO="dhcp"
IPV6INIT="yes"
NM_CONTROLLED="yes"
ONBOOT="yes"
TYPE="Ethernet"
EOS
