#!/bin/bash

whereami=`pwd`

DEV_ENV=${DEV:-false}
SSL_CERT=${SSL_CERT:-cert.pem}
SSL_KEY=${SSL_KEY:-key.pem}
USE_OAUTH=${USE_OAUTH:-1}

cd $whereami

TSNODE=ts-node

if [ "$DEV_ENV" = true ]
then
  TSNODE=ts-node-dev
fi

PORT=${PORT:-3000}

USE_OAUTH=$USE_OAUTH SSL_KEY=$SSL_KEY SSL_CERT=$SSL_CERT PORT=$PORT $TSNODE index.ts
