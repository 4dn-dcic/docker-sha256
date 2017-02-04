#!/bin/bash

file=$1

if [[ $file =~ \.gz$ ]]
then
  SHA_OUT=($(gunzip -c $file | sha256sum))
else
  SHA_OUT=($(sha256sum $file))
fi

SHA=${SHA_OUT[0]}
echo "$SHA" >> report

