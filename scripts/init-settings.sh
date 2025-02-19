#!/bin/bash
#=================================================
# File name: init-settings.sh
# Description: This script will be execute during the first boot
# Author: SuLingGG
# Blog: https://mlapp.cn
#=================================================

# Set default theme to luci-theme-argon
uci set luci.main.mediaurlbase='/luci-static/argon'

# Disable opkg signature check
sed -i 's/option check_signature/# option check_signature/g' /etc/opkg.conf

# Change luci sources
sed -i 's/releases\/18.06.8/snapshots/g' /etc/opkg/distfeeds.conf

# Disable autostart by default for some packages
cd /etc/rc.d
rm -f S98udptools || true

exit 0
