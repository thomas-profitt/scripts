#!/bin/bash
BADTOUCH_VAR="Wacom Bamboo Comic 2FG Finger touch"
TOUCH_STATE_VAR=`xsetwacom get "$BADTOUCH_VAR" touch`

if [ "$TOUCH_STATE_VAR"  ==  "on" ]
	then
		xsetwacom set "$BADTOUCH_VAR" touch off
	else 
		xsetwacom set "$BADTOUCH_VAR" touch on
fi
