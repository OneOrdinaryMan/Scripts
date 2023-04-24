#!/bin/bash

if [[ ! -e "$1.html" ]]; then
  printf "<!DOCTYPE html>\n<html>\n<head><title>\n$1\n</title>\n</head><body>\n</body>\n</html>" > "$1.html"
  echo "File created"
else
  echo "File exists"
  exit 1
fi
