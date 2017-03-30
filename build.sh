#!/bin/bash
set -x

wget -q http://www.thoughtworks.com/products/docs/go/current/help/resources/go-plugin-api-current.jar
docker run -ti -v $(pwd):/data/ -w /data/ qnib/alpn-java-build \
       mvn install:install-file -Dfile=go-plugin-api-current.jar -DgroupId=com.thoughtworks.go -DartifactId=go-plugin-api -Dversion=14.3.0 -Dpackaging=jar
