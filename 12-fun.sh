#!/bin/bash

ID=$(id -u)
R=\e[31m
G=\e[32m
Y=\e[33m
N=\e[0m
VALIDATE(){
    if [ $1 -ne 0 ]
    then
       echo " $2 Error:: failed"
       exit 1
    else
        echo "$R $2 suceesed"  
    fi 
} 
if [ $ID -ne 0 ]
then
    echo "ERROR:: FAILED"
    exit 1
else
    echo "$G Exicuted"   
fi

for package in $@
do
 yum list installed $package
 if [ $? -ne 0 ]
  then
    yum install $package -y
    VALIDATE $? "installlation of $package"
  else
    echo " $Y already existed" 
  fi   
done