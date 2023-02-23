#!/usr/bin/bash

# vars
SWC_BIN=/home/.swc/swc-linux-x64-gnu # change the path with you executable's path
CFG_FILE="./config.swcrc" # default config path at the root of the directory
FILES="$(find . -type f -name '*.ts')" # get all the files ending in .ts, including sub-directories

case $1 in
	"-c") # compile function
		for TS_FILE in $FILES; do # loop through the .ts files
			echo "> SWC: Started compiling $TS_FILE" # print input file confirmation
			JS_FILE="${TS_FILE%.*}.js" # replace .ts with .js
			$SWC_BIN compile --config-file $CFG_FILE $TS_FILE --out-file $JS_FILE # run the command
			echo "> SWC: Compiled output $JS_FILE" # print output file confirmation
			echo "---" # delimiter
		done
	;;
	"-v") # version
		$SWC_BIN -V #run command
	;;
esac

# export PATH="${PATH}:${HOME}/.swcs"
