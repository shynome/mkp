#!/bin/sh

if [ x$1 != x ]
then
project_name=$1
./php.sh
else
echo "Error: project name is required"
fi