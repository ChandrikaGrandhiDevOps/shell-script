#!/bin/bash

ID=$(id -u)

if [ $ID -ne 0 ]
then 
    echo "ERROR: Please run this command from root access"
else
    echo "Sucess"
fi    