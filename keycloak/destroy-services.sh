#!/bin/sh

fleetctl destroy keycloak
fleetctl destroy keycloak-discovery

fleetctl list-units
