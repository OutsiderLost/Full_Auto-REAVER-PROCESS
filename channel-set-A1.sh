#!/bin/bash

iw dev <iface> set channel "$(grep '<BSSID>' /root/wash-log.txt | awk '{print $2}')"
