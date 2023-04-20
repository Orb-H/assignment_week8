#!/bin/bash

files=("$(ls ./files)")
upper=({A..Z})
lower=({a..z})

for file in $files
do
	for (( i=0; i < ${#upper[@]}; i++ ))
	do
		if [[ $file = ${upper[i]}* ]]; then
			mv "./files/$file" "./${lower[i]}/$file"
			#echo "moving to ./${lower[i]}/$file"
		fi
		if [[ $file = ${lower[i]}* ]]; then
			mv "./files/$file" "./${lower[i]}/$file"
			#echo "moving to ./${lower[i]}/$file"
		fi
	done
	
done
