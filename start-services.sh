#!/bin/sh

fleetctl start zookeeper

fleetctl start zookeeper-discovery

fleetctl start kafka

fleetctl start kafka-discovery

fleetctl start hello-race

fleetctl start consume-reads

fleetctl start consume-bib-aggregates

fleetctl start consume-checkpoint-checks

fleetctl start generate-race

fleetctl list-units