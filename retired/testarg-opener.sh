#!/bin/bash

clean_arg=`printf %q "$1"`
clean_argb=`sed 's/"/\\"/g' <<< $clean_arg`

xfce4-terminal -H -e "/home/tom/scripts/testarg.sh $clean_argb"
