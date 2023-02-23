#!/usr/bin/sh

REQUIRE_RMB=0
# Export config
. ./jitter.conf

# By default ydotool looks in wrong directory
export YDOTOOL_SOCKET=/tmp/.ydotool_socket

# To allow to run ydotool without root
uname2="$(stat -c "%U" /tmp/.ydotool_socket)"
if [ "x${uname2}" != "x${USER}" ]; then
	echo "root is needed to set /tmp/.ydotool_socket to be owned by user"
	su - root -c "chown $USER:$USER /tmp/.ydotool_socket"
	echo "root access granted"
fi

echo "running hkdm daemon..."
if [ $REQUIRE_RMB -eq "0" ]; then
	hkdm -c ./hkdm_jitter.toml -i
else
	hkdm -c ./hkdm_rmb_jitter.toml -i
fi
