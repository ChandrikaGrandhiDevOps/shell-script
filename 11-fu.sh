#!/bin/bash
ID=$(id -u)
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
yum install git -y
VALIDATE  $? "git"
yum install maven -y
VALIDATE $? "maven"
yum install mysql -y
VALIDATE $? "mysql"

       