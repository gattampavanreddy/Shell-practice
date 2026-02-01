#!/bin/bash

starttimes=$(date)

echo "script executed at: $timestamp"

sleep 10

endtimes=$(date +%s) 
totaltimes=$(($endtimes - $starttimes))

echo "script executed in: $totaltimes"  



