#!/usr/bin/bash
function ask_guess {
  echo "How many files are in the current directory?"
  read guess
}

num_files=$(ls -1 | wc -l)
ask_guess
while [[ $guess -ne $num_files ]]
do
  if [[ $guess -gt $num_files ]]; then
    echo "Too high! Try again."
  else
    echo "Too low! Try again."
  fi
  ask_guess
done

echo "Congratulations! You guessed it right. There are $num_files files."
