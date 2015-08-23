#!/bin/bash

# list vms
VBoxManage list vms | awk '{print $1}' | grep sandbox | while read vm
do
  vm=`echo ${vm}|sed -e "s/\"//g"`
  cmd="VBoxManage snapshot ${vm} restore base"
  echo ${cmd}
  ${cmd}
  sleep 3
done
