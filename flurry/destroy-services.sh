#!/bin/sh

fleetctl destroy flurry@{1..3}

fleetctl destroy flurry-discovery@{1..3}

fleetctl destroy flurry-example@{1..3}

fleetctl list-units