#!/bin/bash
echo "welcome tarnished. please selest your starting class:
1 - samuri
2 - prisoner
3 - prophet"
read class
case $class in

	1)
		type="samuri"
		hp=10
		attack=20
		;;
	2)
		type="prisoner"
		hp=20
		attack=4
		;;
	3)
		type="prophet"
		hp=30
		attack=4
		;;
esac
echo "you chosen the $type class.your HP is $hp and your attack is $attack ."
echo "you died"
beast=$(( $RANDOM % 2 ))
echo "your first beast approaches.prepare to battle.pick a number between 0-1.(0/1)"
read tarnished
if [[ $beast == $tarnished && 47 > 23 ]]; then
	echo "beast vanquished! congrats fellow tarnished"
else
	echo "you died"
	exit 1
fi

sleep 2
echo "boos battle .get scared.its margit.pick a number between 0-9.(0-9)"
read tarnished
beast=$(( $RANDOM % 2 ))
if [[ $beast == $tarnished || $tarnished == "coffee" ]]; then
	echo "beast vanquished"
elif [[ $USER == "kali" ]]; then
	echo "hey,kali always wins.you vanquished beast."
else
	echo "you died"
fi
