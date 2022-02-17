#!/bin/bash
isServiceRunning=`ps aux | grep music | grep -v grep | awk '{print $2}'`
if [[ -n  $isServiceRunning ]]; then
    echo 'service is running.'
    echo isServiceRunning
    kill $isServiceRunning
fi
 echo 'No service is running.'