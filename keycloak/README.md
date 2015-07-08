# fleet-services/keycloak
JBoss Keycloak and a proxied image service running in CoreOS + Fleet + Etcd + Docker

## Setup
Spin up your cluster using the instructions in the root README plz kthxbai welcome back!
* ```cd /services/keycloak``` in a terminal connected to any of your CoreOS machines
* start up all services with ```sh start-services.sh```
* ```fleetctl list-units``` and ```etcdctl get /services/keycloak/port``` to discover your Keycloak service
* log into your Keycloak instance at /auth/admin with admin / admin
* grab your demo realm's public key from the Settings -> Keys tab and paste it into config/proxy.json
* create a new client with foo-http as the Client ID and Name, and use the IP of the machine running your proxy for the Valid Redirect URI ie. http://172.17.8.102/*
* grab your foo-http client's secret from the Credentials tab and paste it into config/proxy.json
* from your terminal, run ```fleetctl stop proxy-to-foo-http && fleetctl start proxy-to-foo-http``` to restart the proxy with the new configuration values
  Pro Tip: ```docker exec -it proxy-to-foo-http bash``` into the running container from its host machine and ```cat proxy.json``` to inspect the new configuration file

### Using implicit client flow
* verify from the admin console that your foo-http client has a Valid Redirect URI and Base URL pointing to the right URL
* in a separate tab, navigate to http://172.17.8.102/images/small to be redirected to the keycloak login page
* back in the admin console, create a user ```trogdor``` and turn on Email Verified, reset their password to ```fhqwhgads``` then assign them to the user role from the Role Mappings tab
* jump back to the login page, log in with that user and enjoy your chocolate

ᕕ( ᐛ )ᕗ
