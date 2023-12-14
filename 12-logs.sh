#!/bin/bash

ID=$(id -u)
TIMESTAMP=$(date +%F-%H-%M-%S)
LOGFILE="/tmp/$0-$TIMESTAMP.log"

VALIDATE(){
 if [ $1 -ne 1 ]
    then
        echo "ERROR:: $2 FAILED"
        
    else
        echo "$2 i was installed it suceesesfully"
    fi
}
if [ $ID -ne 1 ]
then
    echo "ERROR:: FAILED"
    
else
    echo "i was sucessfully installed"
fi
yum install git -y &>> LOGFILE
VALIDATE  $? "git"
yum install maven -y &>> LOGFILE
VALIDATE $? "maven"
yum install mysql -y &>> LOGFILE
VALIDATE $? "mysql"

       