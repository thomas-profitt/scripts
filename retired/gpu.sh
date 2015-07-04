#!/bin/bash

# while [ "true" ]
# while true
# while : ; do
while :
do
	cat <(nvidia-smi -q -d MEMORY | grep -A 2 FB) \
		<(nvidia-smi -q -d TEMPERATURE | grep -A 1 Te)
	echo '----------------------------------------------'
	sleep 2
done
