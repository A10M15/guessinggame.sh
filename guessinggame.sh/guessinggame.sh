#!/usr/bin/env bash
# File: guessinggame.sh

function count_files {
  ls | wc -l | tr -d ' '
}

actual=$(count_files)

echo "Welcome to the Guessing Game!"
echo "How many files are in the current directory?"

while true
do
  read -p "Enter your guess: " guess
  if ! [[ $guess =~ ^[0-9]+$ ]]
  then
    echo "Please enter a whole number."
  elif [[ $guess -lt $actual ]]
  then
    echo "Your guess is too low. Try again."
  elif [[ $guess -gt $actual ]]
  then
    echo "Your guess is too high. Try again."
  else
    echo "Congratulations! You guessed correctly."
    break
  fi
done
