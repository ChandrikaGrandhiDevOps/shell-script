#!/bin/bash

ID=$(id -u)

if [ $ID -ne 0 ]
then 
    echo "ERROR: Please run this command from root access"
    exit 2
else
    echo "Sucess"
fi 
yum install git -y   

if [ $ID -ne 0 ]
then
    echo "ERROR:git installation failed"
    exit 1
else
    echo "git sucessfully installled"
fi        