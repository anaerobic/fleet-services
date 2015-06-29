#!/bin/sh

fleetctl start flurry@{1..21}

fleetctl start flurry-discovery@{1..21}

sleep 5;

fleetctl start flurry-example

fleetctl list-units