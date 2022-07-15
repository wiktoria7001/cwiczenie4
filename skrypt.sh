#!/bin/bash
if [ "$1" == --date ] || [ "$1" == -d ]; then
  date
fi

if [ "$@" == "--logs" ] || [ "$1" == -l ]; then
  for i in `seq -w 1 100`
    do
    mkdir log$i
    cd log$i
    echo "log$i.txt" > "log$i/log$i.txt"
    echo "$0" >> "log$i/log$i.txt"
    date >> "log$i/log$i.txt"
    cd ..
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

if [ "$1" == --help ] || [ "$1" == -h ]; then
  help
fi
