## Why made this repo
Generate request client from Swagger JSON is saving my time than define request service manually, it's unnessary to put `swagger-codegen-cli.jar` in every project, so I made this repo, for generating request and type defines, then copy to other projects.

## Environment
Make sure you have bash execution enviroment and java command is avaliable.

## How to use
Put all Swagger JSON file into `/input` directory, and run `./script/generate.sh`.

Then you can copy `/gen` files into your project.

