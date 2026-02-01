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

fi 
 
