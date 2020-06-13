#!/bin/bash

squid_username="$(echo $SQUID_USER)"
squid_password="$(echo $SQUID_PASS)"
sleep 1
htpasswd -b /etc/squid/squidusers $squid_username $squid_password

sleep 2
/usr/sbin/squid -k reconfigure
