#!/bin/bash

number=$1

#-gt means greater than
#-lt means less than
#-eq means equal to
#-ne means not equal to
#-ge means greater than or equal to
#-le means less than or equal to

if [ $number -gt 20 ]; then
    echo "given number: $number is greater than 20"
    elif [ $number -eq 20 ]; then
    echo "given number: $number is equal to 20"
    else
    echo "given number: $number is less than 20"

fi 
 
