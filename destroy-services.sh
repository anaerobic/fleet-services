#!/bin/sh

fleetctl destroy consume-checkpoint-checks

fleetctl destroy consume-bib-aggregates

fleetctl destroy consume-reads

fleetctl destroy generate-race

fleetctl destroy hello-race

fleetctl destroy redis-discovery@1

fleetctl destroy redis@1

fleetctl destroy kafka-discovery@1

fleetctl destroy kafka@1

fleetctl destroy zookeeper-discovery@1

fleetctl destroy zookeeper@1

fleetctl list-units