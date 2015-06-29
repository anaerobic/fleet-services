#!/bin/sh

fleetctl stop flurry@{1..21}

fleetctl stop flurry-discovery@{1..43}

fleetctl stop flurry-example

fleetctl list-units