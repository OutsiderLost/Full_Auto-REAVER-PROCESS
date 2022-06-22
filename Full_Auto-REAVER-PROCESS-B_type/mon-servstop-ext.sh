#!/bin/bash

systemctl stop NetworkManager && systemctl stop wpa_supplicant && systemctl stop NetworkManager.service && systemctl stop wpa_supplicant.service && ip link set <iface> down && iw dev <iface> set monitor control && ip link set <iface> up
