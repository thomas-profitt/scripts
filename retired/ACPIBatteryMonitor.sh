#!/bin/bash
while [ "true" ]
do
	cat /proc/acpi/battery/BAT0/* > /home/tom/ACPI\ Battery\ Output.txt
	echo '------updated------'
	sleep 4
done
