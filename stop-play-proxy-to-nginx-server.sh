#!/bin/sh

fleetctl stop play-proxy-to-nginx-http
fleetctl stop nginx-http-discovery
fleetctl stop nginx-http

fleetctl destroy play-proxy-to-nginx-http
fleetctl destroy nginx-http-discovery
fleetctl destroy nginx-http

fleetctl list-units
