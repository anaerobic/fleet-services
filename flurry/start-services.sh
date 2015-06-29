#!/bin/sh

fleetctl start flurry@{1..3}

fleetctl start flurry-discovery@{1..3}

fleetctl start flurry-example@{1..3}

fleetctl list-units