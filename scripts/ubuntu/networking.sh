#!/bin/sh -eux

ubuntu_version="`lsb_release -r | awk '{print $2}'`";
major_version="`echo $ubuntu_version | awk -F. '{print $1}'`";

# Adding a 2 sec delay to the interface up, to make the dhclient happy
echo "pre-up sleep 2" >>/etc/network/interfaces;
