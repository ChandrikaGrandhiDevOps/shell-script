#!/bin/bin
ID=$(id -u)
VALIDATE(){
if [ $1 -ne 0 ]
then
    echo "ERROR: $2 .. FAILED"
    exit 1
else
    echo "$2 ... sucess"
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

VALIDATE $? "mysql"

yum install git -y

VALIDATE $? "git"