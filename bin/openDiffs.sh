#!/bin/bash
editor="vim"
if [ "$1" != "" ]; then
	$editor $(git diff "$1" | egrep "^....b/" | cut -d " " -f 2 | cut -d "/" -f 2-)
else
	echo "Usage: openDiffs <branch>"
fi
