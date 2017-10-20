#!/bin/sh

if [ x$1 != x ]
then
project_name=$1
current_dir="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
source $current_dir/php.sh
else
echo "Error: project name is required"
fi