#!/bin/sh

trap "echo Hello World" USR2
while [ 1 -gt 0 ]
do
	echo Running....
	sleep 2
done
