#!/bin/sh

fleetctl start zookeeper@1

fleetctl start zookeeper-discovery@1

fleetctl start kafka@1

fleetctl start kafka-discovery@1

#fleetctl start redis@1

#fleetctl start redis-discovery@1

fleetctl start hello-race

fleetctl start generate-race

fleetctl start consume-reads

fleetctl start consume-bib-aggregates

fleetctl start consume-checkpoint-checks

fleetctl list-units