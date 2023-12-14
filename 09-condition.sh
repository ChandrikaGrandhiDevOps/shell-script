#!/bin/bash

ID=$(id -u)

if [ $ID -ne 0 ]

then
    echo "ERROR: please run eith root"
else
    echo "u r root"  
fi      

ID=$(id -u)
if [ $ID -ne 0 ]
then
   echo "Error: please run with root acces"
   exit 1
else
   echo "run"
fi   
yum install mysqll -y

if [ $? -e 0 ]
then
    echo "ERROR:installing MYSQL is failed"
    exit 1
else
    echo "installing mysql is sucesses"
fi        