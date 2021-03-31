#!/usr/bin/env bash

if [ -z "$EXAMPLE" ]
then
      echo "\$EXAMPLE is empty!"
      exit 1
fi

docker-compose build --build-arg PASSWORD="$EXAMPLE"

docker-compose up -d

docker cp "$(docker-compose ps -q testapp)":/tmp/test.txt ./test.txt

docker-compose down
