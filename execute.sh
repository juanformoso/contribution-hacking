#!/bin/bash

# 1 in 10 chance to execute
if (( RANDOM % 10 == 0 )); then
  JUNK=$(cat /dev/urandom | tr -dc 'a-zA-Z0-9' | fold -w 32 | head -n 1)
  echo "$JUNK" > junk
  git commit -am "$JUNK"
  git push origin master
fi
