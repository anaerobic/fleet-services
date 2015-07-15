#!/bin/sh

cd /services/keycloak

fleetctl start keycloak
fleetctl start keycloak-discovery

cd ../http-services

fleetctl start play-http
fleetctl start play-http-discovery

cd ../proxy-services

fleetctl start keycloak-proxy-to-play-http

fleetctl list-units
