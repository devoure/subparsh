#!/bin/bash

set -e

source .env

echo "> Welcome to the github switch user"
echo "> Which mode do you want to switch to: "
echo "> 1. WORK"
echo "> 2. HOME"

read mode

if [ $mode == 1 ]; then 
  git config --global user.name $WORK_USER
  git config --global user.email $WORK_MAIL
  echo ">>>> WORK CONFIGS SET"
elif [ $mode == 2 ]; then
  git config --global user.name $HOME_USER
  git config --global user.email $HOME_MAIL
  echo ">>>> HOME CONFIGS SET"
else
  echo ">>>> Wrong mode picked, try again!"
fi

echo ">>>> " $(git config --list)
