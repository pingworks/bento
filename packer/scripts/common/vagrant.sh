#!/bin/bash

mkdir ~vagrant/.ssh
wget --no-check-certificate \
    'https://raw.githubusercontent.com/mitchellh/vagrant/master/keys/vagrant.pub' \
    -O ~vagrant/.ssh/authorized_keys
cp ~vagrant/.ssh/authorized_keys ~vagrant/.ssh/id_rsa.pub
wget --no-check-certificate \
    'https://raw.githubusercontent.com/mitchellh/vagrant/master/keys/vagrant' \
    -O ~vagrant/.ssh/id_rsa
chown -R vagrant ~vagrant/.ssh
chmod -R go-rwsx ~vagrant/.ssh
