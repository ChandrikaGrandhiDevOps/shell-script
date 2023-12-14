#!/bin/bash
ID=$(id -u)
VALIDATE() {
 if [ $1 -ne 0 ]
    then
        echo "ERROR:: $2 FAILED"
        exit 1
    else
        echo " $2 i was installed it suceesesfully"
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
VALIDATE  $? "git

       