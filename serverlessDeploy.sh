#!/bin/bash

PROFILE=""

while test $# -gt 0
do
    case "$1" in
        --install) git submodule foreach 'npm install --legacy-peer-deps || true'
            ;;
        --profile) PROFILE=$2
            ;;
        --aws-profile) PROFILE=$2
            ;;
        --*) echo "bad option $1"
            ;;
    esac
    shift
done

if [[ $PROFILE = "" ]]
then
    git submodule foreach "serverless deploy || true"
else
    git submodule foreach "serverless deploy --aws-profile $PROFILE || true"
fi
