#!/bin/bash
x=1
while [[ $x -le 5 ]]
do 
	read -p "puahup $x: press enter to continue"
	(( x ++ ))
done
echo "congrats,you completed your pushups!"
