#!/bin/sh

fleetctl stop nginx-proxy-to-nginx-http
fleetctl stop nginx-http-discovery
fleetctl stop nginx-http

fleetctl destroy nginx-proxy-to-nginx-http
fleetctl destroy nginx-http-discovery
fleetctl destroy nginx-http

fleetctl list-units
