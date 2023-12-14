#!/bin/bash

ID=$(id -u)

if [ $ID -ne 0 ]
then 
    echo "ERROR: Please run this command from root access"
    exit 2
else
    echo "Sucess"
fi 
yum install myssql -y   

if [ $ID -ne 0 ]
then
    echo "ERROR:mysql installation failed"
else
    echo "mysql sucessfully installled"
fi        