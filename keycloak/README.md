# fleet-services/keycloak
JBoss Keycloak and a proxied image service running in CoreOS + Fleet + Etcd + Docker

## Setup
Spin up your cluster using the instructions in the root README plz kthxbai welcome back!
* ```cd /services/keycloak``` in a terminal connected to any of your CoreOS machines
* start up all services with ```sh start-services.sh```
* ```fleetctl list-units``` and ```etcdctl get /services/keycloak/port``` to discover your Keycloak service
* log into your Keycloak instance at /auth/admin with admin / admin

### Using Proxy
* grab your demo realm's public key from the Settings -> Keys tab and paste it into proxied-http-services/config/keycloak-proxy-to-twitter-http/proxy.json
* create a new client with twitter-http as the Client ID and Name, and use the IP of the machine running your proxy for the Valid Redirect URI ie. http://172.17.8.102/*
* from your terminal, run ```fleetctl stop keycloak-proxy-to-twitter-http && fleetctl start keycloak-proxy-to-twitter-http``` to restart the proxy with the new configuration values
  Pro Tip: ```docker exec -it keycloak-proxy-to-twitter-http bash``` into the running container from its host machine and ```cat proxy.json``` to inspect the new configuration file
* back in the admin console, create a user ```trogdor``` and turn on Email Verified, reset their password to ```fhqwhgads``` then assign them to the user role from the Role Mappings tab

### Using Implicit Client Flow
* verify from the admin console that your twitter-http client has a Valid Redirect URI and Base URL pointing to the proxy!
* grab your twitter-http client's secret from the Credentials tab and paste it into proxied-http-services/config/keycloak-proxy-to-twitter-http/proxy.json
* in a separate tab, navigate to http://172.17.8.102/images/small to be redirected to the keycloak login page
* log in as trogdor and enjoy your chocolate

### Using Direct Access Grants
* from the admin console, edit your twitter-http client and turn on Direct Grants Only and set the Access Type to confidential
* in a separate tab, navigate to http://172.17.8.102/images/small to be redirected to the keycloak "you did something dumb, so we're sorry... pause not" page
* open up Postman and build a new GET request to http://172.17.8.102/images/small with an Authorization header with a value of ```Bearer foo```
* send the request and feel the shame of being 401 Unauthorized from the party
* build a new POST request to your Keycloak server at /auth/realms/demo/protocol/openid-connect/token with an x-www-form-url-encoded Body like ```username=trogdor&password=fhqwhgads&client_id=twitter-http&grant_type=password&client_secret=847fa938-6f82-474f-9241-4930962d2375```
* send the request and copy the access_token value from the response Body, go back to your GET request and update the Authorization header value like ```Bearer eyJhbGc...```
* send your request and enjoy your chocolate

### Discovering Keycloak Endpoints
* Navigate to /auth/realms/demo/.well-known/openid-configuration

ᕕ( ᐛ )ᕗ
