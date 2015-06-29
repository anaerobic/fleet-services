#!/bin/sh

fleetctl stop consume-checkpoint-checks

fleetctl stop consume-bib-aggregates

fleetctl stop consume-reads

fleetctl stop generate-race

fleetctl stop hello-race

fleetctl stop redis-discovery@1

fleetctl stop redis@1

fleetctl stop kafka-discovery@1

fleetctl stop kafka@1

fleetctl stop zookeeper-discovery@1

fleetctl stop zookeeper@1

fleetctl list-units