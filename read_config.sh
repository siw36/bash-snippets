#!/bin/bash

function READ_CONFIG () {
	# $1=path to configuration file

	while IFS="=" read -r name val; do
		VARS[$name]=$val
	done < $1

}

# IMPORTANT: declare the associative array outside of the function!
declare -A VARS

READ_CONFIG 'read_config_sample.ini'

# Access the parsed vars like this
# ${VARS[VariableName]}
echo ${VARS[var1]}
