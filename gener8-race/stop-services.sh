#!/bin/sh

fleetctl stop consume-checkpoint-checks

fleetctl stop consume-bib-aggregates

fleetctl stop consume-reads

fleetctl stop generate-race

fleetctl stop hello-race

fleetctl stop redis-discovery

fleetctl stop redis

fleetctl stop kafka-discovery

fleetctl stop kafka

fleetctl stop zookeeper-discovery

fleetctl stop zookeeper

fleetctl list-units