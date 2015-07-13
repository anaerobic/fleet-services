#!/bin/sh

fleetctl stop keycloak
fleetctl stop keycloak-discovery

fleetctl list-units
