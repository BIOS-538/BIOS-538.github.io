#!/bin/bash

# show what files would be renamed and to what
for file in $(find . -name "$1"); do
  mv -v "$i" "echo $i | sed 's/$1/$2/g'";
done

