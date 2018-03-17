#!/usr/bin/env bash

TAGS="7.1 7.2"

for tag in ${TAGS};
do
    docker build -t pocket-test:${tag} -t tjamps/pocket-test:${tag} -f ${tag}/Dockerfile .
    if [ $? -ne 0 ]; then
        exit 1
    fi
done

exit 0
