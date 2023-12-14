#!/bin/bash

ID=$(id -u)
TIMESTAMP=$(date +%F-%H-%M-%S)
R="\e[31m"
G="\e[32m"
Y="\e[33m"
LOGFILE="/tmp/$0-$TIMESTAMP.log"

VALIDATE(){
 if [ $1 -ne 0 ]
    then
        echo -e "$R ERROR:: $2 FAILED"
        
    else
        echo -e "$G  $2 i was installed it suceesesfully"
    fi
}
if [ $ID -ne 0 ]
then
    echo "ERROR:: FAILED"
    
else
    echo "i was sucessfully installed"
fi
yum install git -y &>> $LOGFILE
VALIDATE  $? "git"
yum install maven -y &>> $LOGFILE
VALIDATE $? "maven"
yum install mysql -y &>> $LOGFILE
VALIDATE $? "mysql"

       