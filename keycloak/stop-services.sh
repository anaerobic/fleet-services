#!/bin/sh

fleetctl stop keycloak
fleetctl stop keycloak-discovery

etcdctl rm /services/foo/host
etcdctl rm /services/foo/port

fleetctl stop foo-http
fleetctl stop foo-http-discovery
fleetctl stop proxy-to-foo-http
fleetctl stop proxy-to-foo-http-discovery

fleetctl list-units
