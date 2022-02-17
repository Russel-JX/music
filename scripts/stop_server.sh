#!/bin/bash
isServiceRunning=`ps aux | grep -w 'music' | grep -v grep |awk '{print $2}'`
if [[ -n  $isServiceRunning ]]; then
    echo 'service is running. stopping...'
    echo isServiceRunning
    kill $isServiceRunning
fi