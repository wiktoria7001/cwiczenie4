#!/bin/bash
if [ "$1" == --date ]; then
  date
fi

if [ "$@" == "--logs" ]; then
  for i in `seq -w 1 100`
    do
    echo "log$i.txt" > "log$i.txt"
    echo "$0" >> "log$i.txt"
    date >> "log$i.txt"
  done
fi
