#!/bin/bash

for dir in ./*; do
  if [ -d "$dir" ]; then
    for file in "$dir"/*.alog; do
      alogview "$file"
    done
  fi
done

