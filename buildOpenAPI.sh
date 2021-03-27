#!/bin/bash

if [[ $1 = "--install" ]] 
then
    npm install -g swagger-cli
fi
swagger-cli bundle openapi.yml --outfile _build/openapi.yml --type yaml
