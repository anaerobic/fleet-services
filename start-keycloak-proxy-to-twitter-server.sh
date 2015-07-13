#!/bin/sh

cd /services/keycloak

fleetctl start keycloak
fleetctl start keycloak-discovery

cd ../http-services

fleetctl start twitter-http
fleetctl start twitter-http-discovery

cd ../proxy-services

fleetctl start keycloak-proxy-to-twitter-http

fleetctl list-units
