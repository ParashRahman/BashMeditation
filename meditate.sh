#!/bin/bash

declare -a guidances=("I want you to focus on your breath."
		      "In." "And out."
		      "In." "And out.")

for i in "${guidances[@]}"
do
    sleep 10
    echo "$i" | festival --tts
done
