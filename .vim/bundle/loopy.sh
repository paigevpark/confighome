#!/bin/bash
for i in $(ls -d */)
do
	if [ -d "$i".git ]
	then
		git submodule add $(cd $i && git remote show origin | grep Fetch | awk '{print $3}') ./$i
	fi
done

#yeah
