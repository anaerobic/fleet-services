#!/bin/sh

fleetctl stop proxy-to-foo-http
fleetctl stop proxy-to-foo-http-discovery

fleetctl stop foo-http
fleetctl stop foo-http-discovery

fleetctl stop keycloak
fleetctl stop keycloak-discovery

fleetctl list-units
