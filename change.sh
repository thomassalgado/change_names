#!/bin/bash

if [ -z "$1" ] || [ -z "$2" ]
then
 echo "Invalid Parameters"
 exit -1
else
 cd $1
 echo "Season $1"
fi

input=$1

if [ $2 == "test" ]
then
 for f in *; do
   new=$(echo $f | sed -e 's/.*Piece_\([0-9]*\).*\(\.[a-z]*\)/'"$input"'E\1\2/')
   #mv $f $new
   echo "$f -> $new"
 done
elif [ $2 == "run" ]
then
 for f in *; do
  new=$(echo $f | sed -e 's/.*Piece_\([0-9]*\).*\(\.[a-z]*\)/'"$input"'E\1\2/')
  mv $f $new
  echo "$f -> $new"
 done
else
 echo "invalid executionn type"
fi
