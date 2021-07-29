#!/bin/bash

ROOT=$(dirname $(cd "$(dirname "$0")";pwd))
cd $ROOT

java -jar .bin/swagger-codegen-cli.jar langs
