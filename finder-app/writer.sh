#! /bin/bash

if [ $# -lt 2 ];
then
    echo "Please pass in two arguments."
	exit 1
fi

DIR_NAME=$(dirname $1)
( mkdir -p ${DIR_NAME} && touch ${1} ) || { echo "This file $1 can't create."; exit 1; }

echo $2 > $1 || { echo "String write fails."; exit 1; }
