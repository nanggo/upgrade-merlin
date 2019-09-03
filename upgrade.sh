#!/bin/bash

# SET FIRMWARE NAME
# default = find file in same folder *.trx
FILE_NAME=`find *.trx`
FILE_NAME_WITH_PATH=`realpath $FILE_NAME`
# SET SSH ID & PWD on ASUS ROUTER
ID='YOUR ID'

# SET ROUTER ADDRESS & PORT
ADDRESS='YOUR ADDRESS'
PORT='YOUR PORT'

# REMOTE LOCATION
REMOTE_LOCATION='~'

# EXIST => next step

# NOT EXIST => GOTO FIND NAME

# COPY LOCAL TO REMOTE
echo scp -P $PORT $FILE_NAME $ID@$ADDRESS:$REMOTE_LOCATION
scp -P $PORT $FILE_NAME $ID@$ADDRESS:$REMOTE_LOCATION

# UPGRADE
echo mtd-write2 $FILE_NAME linux && reboot
mtd-write2 $FILE_NAME linux && reboot

# ssh
echo ssh $ID@$ADDRESS -p $PORT
ssh $ID@$ADDRESS -p $PORT