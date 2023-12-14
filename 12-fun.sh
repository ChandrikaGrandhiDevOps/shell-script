#!/bin/bash

ID=$(id -u)
R="\e[31m"
G="\e[32m"
Y="\e[33m"
N="\e[0m"

TIMESTAMP=$(date +%F-%H-%M-%S)

LOGFILE="/tmp/$0-$TIMESTAMP.log"

echo "$0"
echo "script strated exicuting at $TIMESTAMP" &>> $LOGFILE

VALIDATE(){
    if [ $1 -ne 0 ]
    then
       echo " $2 Error:: failed"
       exit 1
    else
        echo -e "$R $2 suceesed"  
    fi 
} 
if [ $ID -ne 0 ]
then
    echo "ERROR:: FAILED"
    exit 1
else
    echo -e "$G Exicuted"   
fi

for package in $@
do
 yum list installed $package &>> $LOGFILE
 if [ $? -ne 0 ]
  then
    yum install $package -y
    VALIDATE $? "installlation of $package"
  else
    echo -e " $Y already existed" 
  fi   
done