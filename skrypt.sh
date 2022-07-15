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

if [ "$2" == "30" ] && [ "$1" == --logs ]; then
  for j in `seq -w 1 30`
    do
    echo "log$j.txt" > "log$j.txt"
    echo "$0" >> "log$j.txt"
    date >> "log$j.txt"
  done
fi

if [ "$1" == --help]; then
  help
fi
