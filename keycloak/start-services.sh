#!/bin/sh

fleetctl start keycloak
fleetctl start keycloak-discovery

fleetctl list-units
