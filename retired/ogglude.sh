#!/bin/bash
# This script converts 256kpbs m4a files into equivalent ogg files.
# It's all fucky.

#fn=`printf %q "$1"`
#fn=${1%/}

curDir=`pwd`

for i in "$@"
do
	cd "$i" \
	&& fn=`pwd` \
	&& dir2ogg -mq8 *.m4a \
	&& tar -cvf "$fn.tar" *.m4a \
	&& rm *.m4a \
	&& cd $curDir
done
