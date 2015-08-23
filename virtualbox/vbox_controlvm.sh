#!/bin/bash

# list vms
VBoxManage list vms | awk '{print $1}' | grep sandbox | while read vm
do
  if [ "$1" = "stop" ]; then
    vm=`echo ${vm}|sed -e "s/\"//g"`
    cmd="VBoxManage controlvm ${vm} poweroff"
    echo ${cmd}
    ${cmd}
    sleep 3
  elif [ "$1" = "start" ]; then
    vm=`echo ${vm}|sed -e "s/\"//g"|grep -v wimax`
    cmd="VBoxManage startvm ${vm} --type headless"
    echo ${cmd}
    ${cmd}
  fi
done
