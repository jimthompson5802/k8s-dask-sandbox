#!/bin/bash

# kill all kubectl port-forward commands

for p in `ps | grep port\-forward | grep -v grep | cut -f 2 -d' '`
do
  echo kill pid $p
  kill $p
done
