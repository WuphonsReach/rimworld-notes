#!/bin/bash


pushd rimworld-config
./grab-latest.sh
popd
pushd rimworld-mod-lists
./grab-latest.sh
popd
pushd rimworld-logs
./grab-latest.sh
popd

git add "rimworld-config/" "rimworld-mod-lists/"

#current_datetime=$(date '+%Y-%m-%d %H:%M:%S')
#echo "date=$current_datetime"
#git commit -m "snapshot: $current_datetime"
