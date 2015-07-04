#!/bin/bash
# This script converts a directory's ogg audio files into m4a audio files,
# then rolls the directory up into a tarball, placing it beside the directory.

run_dir=`pwd`

for i in "$@"
do
	cd "$i" \
	&& \
		for i in [!BEING_CONVERTED_]*.m4a
		do \
			/home/tom/software/libav/avconv \
				-i "$i" \
				-c:a libfdk_aac \
				-vbr 4 \
				-vn \
				"BEING_CONVERTED_${i%.*}.m4a" ; \
		done \
	&& fn=`pwd` \
	&& tar -cvf "$fn.tar" [!BEING_CONVERTED_]*.m4a \
	&& rm [!BEING_CONVERTED_]*.m4a \
	&& \
		for i in BEING_CONVERTED_*.m4a
		do \
			mv "$i" "`echo $i | sed 's/^BEING_CONVERTED_//'`" ;
		done \
	&& mv "$fn.tar" ..

	cd $run_dir
done
