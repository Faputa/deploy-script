#!/bin/bash

d0=$(dirname $0)

for d1 in $(ls $d0); do
  if test -d $d0/$d1; then
    if test -f "$d0/$d1/status.sh"; then
      sh $d0/$d1/status.sh
    fi
  fi
done
