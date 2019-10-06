#!/bin/bash

read -p "A keresett szó angulul: " word
if [ "$word" ]; then
	cat dictionary.txt | grep -E "^$word\s" | awk '{print "\nA(z) '\'$word\'' szó magyar megfelelője: " $2}'
else
	echo -e "\nNem adott meg semmit!"
fi
