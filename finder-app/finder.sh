#!/bin/bash

filesdir=$1
searchstr=$2

if [ $# -lt 2 ]; then
	echo "Error: Number of arguments less than 2."
	exit 1
fi

if [[ -d '${filesdir}' ]]; then
	echo "Error: The mentioned directory ${filesdir} does not exist."
	exit 1
fi

X=$(grep -arl ${searchstr} ${filesdir} | wc -l)
Y=$(grep -ar ${searchstr} ${filesdir} | wc -l)
echo "The number of files are ${X} and the number of matching lines are ${Y}"
