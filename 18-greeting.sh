#!/bin/bash

NAME=""
WISHES=""
USAGE(){
    echo "USAGE:: $(basename $0) -n <name> -w <wishes>"
    echo "Options::"
    echo "-n, Specify the name (mandatory)"
    echo "-w, Specify the wishes (gm,gn,hru)"
    echo "-h, Display help"
    echo "\?, Invalid option"
}

while getopts ":n:w:h" opt; do
    case $opt in 
         n) NAME="$OPTARG";;
         w) WISHES="$OPTARG";;
         \?) USAGE; exit;;
         :) USAGE; exit;;
         h|*) USAGE; exit;;
    esac      
done