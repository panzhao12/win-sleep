#!/bin/bash

echo "go to sleep?"
if read -t 5 res; then
  if [ $res = "yes" ] || [ $res = "y" ]; then
    rundll32.exe powrprof.dll,SetSuspendState 0,1,0
  else
    echo "Ciao!"
  fi
else
  echo "Ciao!"
fi
