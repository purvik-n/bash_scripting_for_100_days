#!/bin/bash
echo "what do you want to cheak?"
read target
while true
do
	if ping -q -c 2 -w 2 $target > /dev/null; then
	echo "hey, you're up!"
	break
	else
	echo "$target is currently down."
	fi
sleep 2
done
