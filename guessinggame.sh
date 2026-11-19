#!/usr/bin/env bash

function ask_user {
  echo "Combien de fichiers y a-t-il dans le repertoire actuel ?"
  echo "Entrez votre estimation :"
  read response
}

function check_answer {
  local num_files=$(ls -1 | wc -l)
  if [[ $response -eq $num_files ]]
  then
    echo "Felicitations ! Vous avez devine le bon nombre."
    return 0
  elif [[ $response -lt $num_files ]]
  then
    echo "Votre estimation est trop basse."
    return 1
  else
    echo "Votre estimation est trop haute."
    return 1
  fi
}

function main {
  local correct=1
  while [[ $correct -ne 0 ]]
  do
    ask_user
    check_answer
    correct=$?
  done
  echo "Merci d'avoir joue !"
}

