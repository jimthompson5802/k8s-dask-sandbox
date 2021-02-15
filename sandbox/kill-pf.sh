#!/bin/bash

# kill all kubectl port-forward commands

for p in `ps -ef | grep port\-forward | grep -v grep | cut -f 4 -d' '`
do
  echo kill pid $p
  kill $p
done