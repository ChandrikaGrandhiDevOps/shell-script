#!/bin/bash
ID=$(id -u)
VALIDATE {
 if [ $? -ne 0 ]
    then
    echo "ERROR:: FAILED"
    exit 1
    else
    echo "i was installed it suceesesfully"
    fi 
}

if [ $ID -ne 0 ]
then
    echo "ERROR:: FAILED"
    exit 2
else
    echo "i was sucessfully installed"
fi
yum install git -y
VALIDATE 

       