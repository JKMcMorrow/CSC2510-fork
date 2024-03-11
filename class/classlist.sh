#!/bin/bash

if [ $# -ne 2 ]; then
	echo "Usage $0 <file> <username>"
	exit 1
fi

file=$1
username=$2

if [ ! -f "$file" ]; then
	echo "'$file' not found."
	exit 1
fi

if grep -q "$username" "$file"; then
	linenumber=$(grep -n "$username" "$file" | cut -d: -f1)
	echo "$username is on line: $linenumber"
else
	while true; do
		echo -n "Add name to $file? Y/N"
		read question1
		case $question1 in
			[Yy]|[Yy][Ee][Ss])
				echo "$username" >> "$file"
				echo "$username was added."
				while true; do
					echo -n "Sort $file? Y/N"
					read question2
					case $question2	in			
						[Yy]|[Yy][Ee][Ss])
							sort -o "$file" "$file"
							echo "$file has been sorted."
							break
							;;
						[Nn]|[Nn][Oo])
							break
							;;
						*)
							echo "Invalid Input. Select Y/N"
							;;
					esac
				done
				break
				;;
			[Nn]|[Nn][Oo])
				echo "Exiting"
				exit 0
				;;
			*)
				echo "Invalid Input. Select Y/N"
				;;
		esac
	done
fi
