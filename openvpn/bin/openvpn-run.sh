#!/bin/sh
exec 2>&1
#sleep 4
echo "OpenVPN OPTS: ${OPENVPN_OPTS}"
echo "OpenVPN config: ${OPENVPN_CONFIG}"
exec openvpn --script-security 2 \
    --up "/etc/openvpn/bin/openvpn-up.sh" \
    --down "/etc/openvpn/bin/openvpn-down.sh" \
    $OPENVPN_OPTS --config "$OPENVPN_CONFIG"
