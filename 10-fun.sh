#!/bin/bash
ID=$(id -u)
VALIDATE(){
    if [ $? -ne 0 ]
    then
    echo "ERROR: installation failed"
    exit 2
    else
    echo "sucessfully installled"
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

VALIDATE 
 
yum install git -y

VALIDATE
