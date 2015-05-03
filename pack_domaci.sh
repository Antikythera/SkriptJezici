#!/bin/bash
re='^[0-9]+$'
homeworkdir_p1="Homework_"
filename_p1="CS324-DZ"
filename_p2="-Stefan-Mojsilovic-2112.tar.gz"

if ! [[ $1 =~ $re ]]; then
  echo "error: First argument must be a number" >&2;
  exit 1;
fi

filename=$filename_p1$1$filename_p2
homeworkdir=$homeworkdir_p1$1

echo "Packing $homeworkdir as $filename"
tar zcvf $filename $homeworkdir
