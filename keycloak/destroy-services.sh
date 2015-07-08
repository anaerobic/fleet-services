#!/bin/sh

fleetctl destroy proxy-to-foo-http
fleetctl destroy proxy-to-foo-http-discovery

fleetctl destroy foo-http
fleetctl destroy foo-http-discovery

fleetctl destroy keycloak
fleetctl destroy keycloak-discovery

fleetctl list-units
