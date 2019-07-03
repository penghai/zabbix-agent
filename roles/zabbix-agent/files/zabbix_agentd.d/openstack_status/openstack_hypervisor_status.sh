#!/bin/bash

stats=/tmp/openstack_status

field=$1

case $field in
'count')
    cat $stats | grep -w  $field|awk -F "|" '{print $3}'|xargs echo;;
'free_ram_mb')
    cat $stats | grep -w  $field|awk -F "|" '{print $3}'|xargs echo;;
'memory_mb')
    cat $stats | grep -w  $field|awk -F "|" '{print $3}'|xargs echo;;
'memory_mb_used')
    cat $stats | grep -w  $field|awk -F "|" '{print $3}'|xargs echo;;
'running_vms')
    cat $stats | grep -w  $field|awk -F "|" '{print $3}'|xargs echo;;
'vcpus')
    vcpus=`cat $stats | grep -w  $field|awk -F "|" '{print $3}'|xargs echo`
    echo $vcpus*8|bc
    ;; 
'vcpus_used')
    cat $stats | grep -w  $field|awk -F "|" '{print $3}'|xargs echo;;
esac
