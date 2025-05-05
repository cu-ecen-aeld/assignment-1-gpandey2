#!/bin/bash

writefile=$1
writestr=$2

if [ $# -lt 2 ]; then
	echo "Error: Number of arguments less than 2."
	exit 1
fi

basepath=$(dirname "${writefile}")
if [ ! -d ${basepath} ]; then
	mkdir -p ${basepath}
fi

X=$(echo "${writestr}" > ${writefile})
if [ $? -ne 0 ]; then
	echo "Write to the file failed."
else
	echo "Write to the file successful."
fi
