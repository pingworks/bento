#!/bin/bash -eux

rm /etc/udev/rules.d/70-persistent-net.rules
#  mkdir /etc/udev/rules.d/70-persistent-net.rules
rm /lib/udev/rules.d/75-persistent-net-generator.rules
rm -rf /dev/.udev/ /var/lib/dhcp3/*
echo "pre-up sleep 2" >> /etc/network/interfaces

if grep 'GRUB_CMDLINE_LINUX=.net.ifnames=0 biosdevname=0.' /etc/default/grub;then
  echo "GRUB CMD Line already set."
else
  sed -i -e "s;^GRUB_CMDLINE_LINUX=.*$;GRUB_CMDLINE_LINUX='net.ifnames=0 biosdevname=0';g" /etc/default/grub
  update-grub
fi
