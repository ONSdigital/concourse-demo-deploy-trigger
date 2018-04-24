#!/usr/bin/env bash

usage ()
{
  echo "usage: $0 {environment}"
  echo
  echo
  echo "environment: prod or preprod"
  exit
}

case "$1" in
  (prod|preprod) ;;
  (*) usage ;;
esac

filename=$(date +"%Y-%m-%d_%H-%M-%S")
filename_relative_path=$1/$filename
touch $filename_relative_path
git add $filename_relative_path
git commit -m "Autogenerating release metadata $filename_relative_path"
