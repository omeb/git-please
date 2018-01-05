#!/bin/bash

cd ..; git clone $1
regx="s/.*\/\(.*\).git/\1/"
folder_name=$(echo $1 | sed $regx)
cd $folder_name; npm i; code .}