#!/bin/sh

fleetctl destroy keycloak
fleetctl destroy keycloak-discovery

fleetctl destroy foo-http
fleetctl destroy foo-http-discovery
fleetctl destroy proxy-to-foo-http
fleetctl destroy proxy-to-foo-http-discovery

fleetctl list-units
