#!/bin/bash

declare -a guidances=("I want you to focus on your breath."
		      "Take a deep breath in."
		      "And take a deep breath out."
		      "Take a breath In."
		      "And take a breath out."
		      "Now we are going to focus on your body."
		      "However you wish, shift your focus to your big toe."
		      "Let yourself notice your other toes."
		      "Now shift your focus to your ankles."
		      "Notice your ankle structure."
		      "Let your focus now shift to your calves."
		      "Acknowledge them."
		      "Move your focus to your knees"
		      "Now. Move your focus to your upper leg; your quadriceps."
		      "Address your abdomen."
		      "Sense your chest."
		      "Shift focus to your shoulders."
		      "Notice your elbows as they angle."
		      "Shift your focus to your forearms."
		      "Now shift your focus to your individual fingers."
		      "We are now going to move all the way up your arms to your neck. Focus on your neck."
		      "Shift your focus to your nose."
		      "Shift your focus to the roundness of your eyeballs."
		      "Shift your focus to your ears."
		      "Now, shift your focus to the top of your head."
		      "When you are ready, return to reality."
		     )

declare -a sleeps=("5" #BREATHING PHASE:
		   "1"  
		   "4"
		   "4"
		   "4"
		   "4" #BODY PHASE:
		   "1" #TOES:
		   "1" 
		   "10" #ANKLES:
		   "1"
		   "10" #CALVES:
		   "1"
		   "10" #KNEES:
		   "10" #QUADS:
		   "10" #ABDOMEN:
		   "10" #CHEST:
		   "10" #SHOULDERS:
		   "10" #ELBOWS:
		   "10" #FOREARMS:
		   "10" #FINGERS:
		   "10" #NECK:
		   "10" #NOSE:
		   "10" #EYEBALLS:
		   "10" #EARS:
		   "10" #TOP OF HEAD:
		   "10" #RETURN TO REALITY:		   
		  )
		      


for index in ${!guidances[*]}
do
    sleep ${sleeps[$index]}
    echo "${guidances[$index]}" | festival --tts
done
