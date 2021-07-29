#!/bin/bash

ROOT=$(dirname $(cd "$(dirname "$0")";pwd))
cd $ROOT

IGNORE_FILES=(.gitignore .npmignore .swagger-codegen-ignore git_push.sh package.json README.md .swagger-codegen tsconfig.json)

for FILE in ./input/*
do
    if [[ $FILE =~ ".json" ]]
	then
		TARGET=$(basename $FILE .json)
		rm -rf $ROOT/gen/${TARGET}
		java -jar .bin/swagger-codegen-cli.jar generate -l typescript-axios -i $FILE -o "gen/${TARGET}"
		for IGNORE_FILE in ${IGNORE_FILES[*]}
			do
				rm -rf $ROOT/gen/$TARGET/$IGNORE_FILE
			done
	fi
done

