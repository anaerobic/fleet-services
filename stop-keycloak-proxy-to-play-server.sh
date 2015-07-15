#!/bin/sh

fleetctl stop keycloak-proxy-to-play-http
fleetctl stop play-http-discovery
fleetctl stop play-http

fleetctl destroy keycloak-proxy-to-play-http
fleetctl destroy play-http-discovery
fleetctl destroy play-http

fleetctl list-units
