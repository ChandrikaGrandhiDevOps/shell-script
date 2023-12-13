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
else
   echo "run"
fi      