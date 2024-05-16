#!/bin/bash

# Set default theme to luci-theme-argon
uci set luci.main.mediaurlbase='/luci-static/argon'
uci commit luci

# Disable IPV6 ula prefix
# sed -i 's/^[^#].*option ula/#&/' /etc/config/network

# Enable hw offloading
#sed -i "/.*option synflood*/a\	option flow_offloading_hw '1'" /etc/config/firewall
uci set firewall.@defaults[0].flow_offloading_hw='1'
uci commit firewall

# Check file system during boot
# uci set fstab.@global[0].check_fs=1
# uci commit fstab

exit 0
