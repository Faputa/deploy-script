#!/bin/bash

d0=$(dirname $0)

for d1 in $(ls $d0); do
  if test -f "$d0/$d1/status.sh"; then
    r=$(sh $d0/$d1/status.sh)
    if [[ $r == stoped* ]]; then
      if test -f "$d0/$d1/start.sh"; then
        echo $d0/$d1/start.sh
        sh $d0/$d1/start.sh
      fi
    fi
  fi
done
