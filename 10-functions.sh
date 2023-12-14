#!/bin/bin
ID=$(id -u)
VALIDATE(){
if [ $ID -ne 0 ]
then
    echo "ERROR: installing fail"
    exit 1
else
    echo "success"
fi
}

if [ $ID -ne 0 ]
then
    echo "ERROR: pease try with rooot access"
    exit 1
else
    echo "you are root user"
fi 
yum install mysql -y

VALIDATE