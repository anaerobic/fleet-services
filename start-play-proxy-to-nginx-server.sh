#!/bin/sh

cd http-services

fleetctl start nginx-http
fleetctl start nginx-http-discovery

cd ../proxy-services

fleetctl start play-proxy-to-nginx-http

fleetctl list-units
