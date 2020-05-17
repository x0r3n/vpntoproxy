#!/bin/sh
sleep 2
# Start Squid
echo "Starting Squid"
#svwaitup 10 /service/openvpn || exit 1
exec squid -sN
