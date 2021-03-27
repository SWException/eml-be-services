# SWException EML-BE

## Git clone

`git clone --recurse-submodules -j8 git@github.com:SWException/eml-be-services.git`

Clona la repo e anche tutti i submodules. `-j8` esegue il clone in parallelo fino a 8 submodules alla volta.

## Update submodules

`git submodule update --remote`

## Serverless deploy

`./serverlessDeploy.sh [ --install ] [[ --aws-profile | --profile ] PROFILE_NAME ]`

Esegue il deploy di ogni submodules. È possibile specificare le seguenti opzioni:
 - ***--install***: esegue npm install in ogni submodule
 - ***[ --aws-profile | --profile ] PROFILE_NAME***: esegue serverless deploy con il profilo PROFILE_NAME in ogni submodule

## OpenAPI

`./buildOpenAPI.sh [ --install ]`

Genera un unico file openapi.yml in \_build/openapi.yml. È possibile specificare le seguenti opzioni:
 - ***--install***: installa swagger-cli
