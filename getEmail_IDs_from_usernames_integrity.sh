#!/bin/bash
FILE="listOfUsers.txt"

cat $FILE | tr -d '\r' | while read line
do
	var=$(im viewuser --user=admin --password=admin	 $line | grep Email | cut -d":" -f 2)
	echo "$line,$var" >> viewusers.csv
	sleep 1s # Waits 1 seconds.
done