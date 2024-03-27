#!/bin/sh

docker run --rm -it -e domain=keycloak --name mkcert -v $PWD/certificates:/root/.local/share/mkcert ikwattro/mkcert-docker

sudo security add-trusted-cert -d -r trustRoot -k /Library/Keychains/System.keychain $PWD/certificates/rootCA.pem

docker build -t java-cacerts-import --build-arg CERTIFICATES_PATH=certificates  -f CacertsDockerfile .

docker run --rm -it --name neo4j-cacerts -v $(PWD)/certificates:/tmp/cacerts java-cacerts-import