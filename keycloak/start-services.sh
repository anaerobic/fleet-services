#!/bin/sh

fleetctl start keycloak
fleetctl start keycloak-discovery

fleetctl start foo-http
fleetctl start foo-http-discovery
fleetctl start proxy-to-foo-http
fleetctl start proxy-to-foo-http-discovery

fleetctl list-units
