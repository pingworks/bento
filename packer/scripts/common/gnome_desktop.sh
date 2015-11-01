#!/bin/bash
apt-get update
apt-get upgrade -y
PKGS='ubuntu-desktop gnome-session-flashback gnome-terminal gnome-applets gnome-applets-data indicator-applet indicator-application indicator-appmenu indicator-messages indicator-session indicator-keyboard overlay-scrollbar overlay-scrollbar-gtk3 overlay-scrollbar-gtk2 notify-osd-icons ubuntu-docs ubuntu-system-service update-inetd xfonts-scalable mousetweaks sessioninstaller signond signon-ui signon-plugin-password ssl-cert signon-plugin-oauth2 signon-keyring-extension'
for P in $PKGS;do
  apt-get install -y $P
done
