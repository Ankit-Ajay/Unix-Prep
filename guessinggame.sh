#!/usr/bin/env bash
numfile=$(ls |wc -l)
echo "Welcome to the Quiz"
echo "Guess the number of files in the repository. Press enter"
guess_num   


function guess_num{
      read guess
      if[[$guess -eq $numfile]]
      then
          echo "Great!! You Done it"
          echo "It is "
          for f in $(ls)
          do
            echo" - $f and"
          done
          echo " and you done"
      else
        if [[ $guess -gt $ numfile]]
        then
          echo "There is less .Please try again. Press Enter"
          guess_num
        else
          echo "There is More .Please try again. Press Enter"
          guess_num
        fi
      fi
      }
   
