#!/bin/bash

# ${var+x} is a parameter expansion which evaluates to nothing if var is unset, and substitutes the string x otherwise
# source: https://stackoverflow.com/questions/3601515/how-to-check-if-a-variable-is-set-in-bash

if [ -z ${var+x} ];then
    echo "is unset"
else
    echo "is set"
fi
