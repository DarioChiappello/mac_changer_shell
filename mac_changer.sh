#!/bin/bash
if [[ $# -lt 2 ]]
then
	echo "The script needs 2 arguments"
	exit 0
fi
INTERFACE=$1
NEWADRESS=$2
echo "[+] Changing MAC adress for $INTERFACE to $NEWADRESS"
ifconfig $INTERFACE down
ifconfig $INTERFACE hw ether $NEWADRESS
ifconfig $INTERFACE up
RESULT=$(ifconfig $INTERFACE)
echo "[+] MAC adress for $INTERFACE Changed to $NEWADRESS"
echo $RESULT

