#!/bin/bash

for d in *; do
	[[ -d "$d" ]] || continue
	tar cvzf "$d.tar.gz" "$d"
done
