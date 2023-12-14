#!/bin/bash


NUMBER3=$1
NUMBER4=$2

SUM=$(($NUMBER3+$NUMBER4))
echo "total is $SUM"

echo "How many args passed:: $#"
echo "All args passed:: $@"