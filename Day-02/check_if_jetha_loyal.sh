#!/bin/bash

# First, we ask the user for input.
read -p "jeta ne mud ke kise deka: " bandi

# We check if the value of the '$bandi' variable is "Daya Bhabhi".
# Notice the spaces inside the brackets and double quotes around the variable.
if [ "$bandi" == "Daya Bhabhi" ]
then
  echo "Jeta is loyal"

# If the first condition is false, we check another condition.
# For this example, let's check for "Babita Ji".
elif [ "$bandi" == "Babita Ji" ]
then
  echo "Jeta is not loyal"

# If none of the above conditions are true, this block runs.
else
  echo "Jeta looked at someone else entirely"
fi
