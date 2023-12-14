#!/bin/bash

ID=$(id -u)
VALIDATE() [
    if [ $? -ne 0 ]
    then
       echo "Error:: failed"
       exit 1
    else
        echo "suceesed"   
]
if [ $ID -ne 0 ]
then
    echo "ERROR:: FAILED"
    exit 1
else
    echo "Exicuted"   
fi

for package in $@
do
 yum list installed $package
 if [ $? -ne 0 ]
 then
    yum install $package -y
    VALIDATE $? "installlation of $package"
else
    echo "already existed"    
done