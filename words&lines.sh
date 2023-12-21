#!/bin/bash

FILE="/tmp/shell-script/hello.txt"

if [ ! -f $FILE ]
then 
   echo -e "$R there is no file"
fi
   number_of_lines= wc -l $FILE
   number_of_words= wc -w $FILE

   echo -e "$G No.of lines in this file is:<<<"$number_of_lines
   echo -e "$Y No.of lines in this file is:<<<"$number_of_words