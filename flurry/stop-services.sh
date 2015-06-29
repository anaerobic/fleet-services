#!/bin/sh

fleetctl stop flurry@{1..3}

fleetctl stop flurry-discovery@{1..3}

fleetctl stop flurry-example@{1..3}

fleetctl list-units