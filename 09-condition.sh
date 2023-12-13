#!/bin/bash

ID=$(id -u)

if [ $ID -ne 0 ]

then
    echo "ERROR: please run eith root"
elese
    echo "u r root"    
