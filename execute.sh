#!/bin/bash

# 1 in 30 chance to execute
if (( RANDOM % 30 == 0 )); then
  JUNK=$(cat /dev/urandom | tr -dc 'a-zA-Z0-9' | fold -w 32 | head -n 1)
  echo "$JUNK" > junk
  git commit -am "$JUNK"
  git push origin master
fi
