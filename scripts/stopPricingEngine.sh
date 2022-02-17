#!/bin/sh
# Stop Subs Load Engine Script
# 2/13/2017   by Siddharth Joshi

SHUTDOWN_URL=http://localhost:8081/manage/shutdown

HOST=`hostname -s`

PIDFILE="/opt/atpco/engine/engineApp/processIds/tpengine.pid"
PIDFILE_FALLBACK="/opt/atpco/engine/engineApp/tpengine/log/tpengine.pid"
if [[ ! -f $PIDFILE && -f $PIDFILE_FALLBACK ]]; then
	PIDFILE=$PIDFILE_FALLBACK
fi

scriptDir="/opt/atpco/engine/scripts/appScripts"

echo "Stopping QueryEngine"
${scriptDir}/engineAppStop.sh $SHUTDOWN_URL $PIDFILE 40 20
exit $?
