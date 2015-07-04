#!/bin/bash

xfce4-terminal --hold -e "echo $(printf '%q' "$1")"
