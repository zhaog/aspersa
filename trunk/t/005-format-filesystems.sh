#!/bin/bash

. ../summary

for f in samples/filesystems*.txt; do
   cp $f /tmp/aspersa;
   parse_filesystems > /tmp/aspersa-test
   if diff -q /tmp/aspersa-test ${f/samples/results/}; then
      echo "OK"
   else
      echo "not OK"
   fi
done
rm /tmp/aspersa
