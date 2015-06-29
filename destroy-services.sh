#!/bin/sh

fleetctl destroy consume-checkpoint-checks

fleetctl destroy consume-bib-aggregates

fleetctl destroy consume-reads

fleetctl destroy generate-race

fleetctl destroy hello-race

fleetctl destroy kafka-discovery

fleetctl destroy kafka

fleetctl destroy zookeeper-discovery

fleetctl destroy zookeeper

fleetctl list-units