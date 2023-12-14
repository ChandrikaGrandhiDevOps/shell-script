#!/bin/bash
ID=$(id -u)
VALIDATE(){
    if [ $1 -ne 0 ]
    then
    echo "ERROR: $2 installation failed"
    exit 2
    else
    echo "$2 sucessfully installled"
    fi
}

if [ $ID -ne 0 ]
then 
    echo "ERROR: Please run this command from root access"
    exit 2
else
    echo "Sucess"
fi 
yum install mysql -y

VALIDATE $? "mysql"
 
yum install git -y

VALIDATE $? "git"

yum install docker -y
 
VALIDATE $? "maven"
