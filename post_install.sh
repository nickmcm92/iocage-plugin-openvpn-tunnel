#!/bin/sh

echo "OpenVPN has been created" > /root/PLUGIN_INFO
echo "Add your config to /media/openvpn.conf" >> /root/PLUGIN_INFO
echo "Add openvpn_enable=\"YES\" to your /etc/rc.conf" >> /root/PLUGIN_INFO

# sysrc -f /etc/rc.conf openvpn_enable="YES" #autostarts openvpn
sysrc -f /etc/rc.conf openvpn_if="tun" #the int openvpn uses
sysrc -f /etc/rc.conf openvpn_configfile="/media/openvpn.conf" #where the vpn config is located
sysrc -f /etc/rc.conf gateway_enable="YES" #enable the jail to be used as a defualt gateway
sysrc -f /etc/rc.conf firewall_enable="YES" #enable ipfw
sysrc -f /etc/rc.conf firewall_script="/usr/local/etc/ipfw.rules" #where the ipfw rules are located

# OpenVPN directory
mkdir /usr/local/etc/openvpn

# Define firewall rules
sysrc -f /etc/rc.conf firewall_script="/etc/ipfw.rules"