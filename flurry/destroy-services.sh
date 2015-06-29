#!/bin/sh

fleetctl destroy flurry@{1..21}

fleetctl destroy flurry-discovery@{1..21}

fleetctl destroy flurry-example

fleetctl list-units