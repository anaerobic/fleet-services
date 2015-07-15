#!/bin/sh

cd /services/keycloak

fleetctl start keycloak
fleetctl start keycloak-discovery

cd ../http-services

fleetctl start nginx-http
fleetctl start nginx-http-discovery

cd ../proxy-services

fleetctl start keycloak-proxy-to-nginx-http

fleetctl list-units
