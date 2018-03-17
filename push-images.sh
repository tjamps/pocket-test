#!/usr/bin/env bash

TAGS="7.1 7.2"

docker login

if [ $? -ne 0 ]; then
    exit 1
fi

for tag in ${TAGS};
do
    docker push tjamps/pocket-test:${tag}
    if [ $? -ne 0 ]; then
        exit 1
    fi
done

exit 0
