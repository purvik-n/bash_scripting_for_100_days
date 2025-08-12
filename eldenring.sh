#!/bin/bash
echo "you died"
echo "Hey, do you like tea ?(y/n)"
read tea
if [[ $tea == "y" ]]; then
	echo "your awesome"
else
	echo "leave right now!"
fi
