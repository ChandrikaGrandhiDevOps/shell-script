#!/bin/bash

ID=$(id -u)

if [ $ID -ne 0 ]

then
    echo "ERROR: please run eith root"
else
    echo "u r root"  
fi      
