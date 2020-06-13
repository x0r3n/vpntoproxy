#!/bin/bash

squid_username="$(echo $SQUID_USER)"
squid_password="$(echo $SQUID_PASS)"

FILE=/etc/squid/squidusers
if [ ! -f "$FILE" ]; then
  sleep 1
  htpasswd -c -b /etc/squid/squidusers $squid_username $squid_password

  sleep 2
  /usr/sbin/squid -k reconfigure
fi