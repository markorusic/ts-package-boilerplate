#!/bin/bash

if [ $# -eq 0 ]
  then
    echo "You have to supply your project name!"
    echo "Example: ./setup.sh my-project"
    exit 1
fi

rm -rf node_modules
rm -rf dist
rm -rf coverage

grep -rl "ts-package-boilerplate" . | xargs sed -i "s/ts-package-boilerplate/$1/g"

mv ../ts-package-boilerplate ../$1

echo "Done!"
echo "Run: cd ../$1 && npm i"
