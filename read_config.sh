#!/bin/bash

declare -A VARS
CONFIG='read_config_sample.ini'

while IFS="=" read -r name val; do
	VARS[$name]=$val
done < $CONFIG

# Access the parsed vars like this
# ${VARS[VariableName]}
echo ${VARS[var1]}
