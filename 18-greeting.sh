#!/bin/bash

NAME=""
WISHES="Good evening"
USAGE(){
    echo "USAGE:: $(basename $0) -n <name> -w <wishes>"
    echo "Options::"
    echo "-n, Specify the name (mandatory)"
    echo "-w, Specify the wishes (gm,gn,hru)"
    echo "-h, Display help"
    
}

while getopts ":n:w:h" opt;
do
    case $opt in 
         n) NAME="$OPTARG";;
         w) WISHES="$OPTARG";;
         \?) echo "invalid options: -"$OPTARG"" >&2; exit;;
         :) USAGE; exit;;
         h|*) USAGE; exit;;
    esac      
done

#if [ -z "$NAME" ]|[ -z "$WISHES" ]; then
if [ -z "$NAME" ]; then
    echo "ERROR: -n  are mandatory."
    USAGE
    exit 1
fi    

echo "HELLO $NAME $WISHES good morning"