#!/bin/sh

fleetctl stop keycloak-proxy-to-twitter-http
fleetctl stop twitter-http-discovery
fleetctl stop twitter-http

fleetctl destroy keycloak-proxy-to-twitter-http
fleetctl destroy twitter-http-discovery
fleetctl destroy twitter-http

fleetctl list-units
