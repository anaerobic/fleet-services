# fleet-services/keycloak
JBoss Keycloak and a proxied image service running in CoreOS + Fleet + Etcd + Docker

## Setup
* ```cd /services/keycloak``` in a terminal connected to any of your CoreOS machines
* start up all services with ```sh start-services.sh```

use the IP of your machine running the keycloak unit for the following steps:
* log into your Keycloak instance at http://172.17.8.101:8080/auth/admin with admin / admin
* grab your demo realm's public key from the Settings -> Keys tab and paste it into config/proxy.json
* create a new client with foo-http as the Client ID and Name, and use the IP of the machine running your proxy for the Valid Redirect URI ie. http://172.17.8.102/*
* grab your foo-http client's secret from the Credentials tab and paste it into config/proxy.json
* from your terminal, run ```fleetctl stop proxy-to-foo-http && fleetctl start proxy-to-foo-http``` to restart the proxy with the new configuration values

Pro Tip: ```docker exec -it proxy-to-foo-http bash``` into the running container from its host machine and ```cat proxy.json``` to inspect the new configuration file
