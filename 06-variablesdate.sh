#!/bin/bash

starttime=$(date +%s)

echo "script executed at: $starttime"

sleep 10

endtime=$(date +%s) 
totaltime=$(($endtime - $starttime))

echo "script executed in: $totaltime"  



