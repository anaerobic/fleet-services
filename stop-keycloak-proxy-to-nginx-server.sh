#!/bin/sh

fleetctl stop keycloak-proxy-to-nginx-http
fleetctl stop nginx-http-discovery
fleetctl stop nginx-http

fleetctl destroy keycloak-proxy-to-nginx-http
fleetctl destroy nginx-http-discovery
fleetctl destroy nginx-http

fleetctl list-units
