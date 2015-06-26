#!/bin/sh

fleetctl destroy consume-reads@1

fleetctl destroy generate-race@1

fleetctl destroy hello-race@1

fleetctl destroy kafka-discovery@1

fleetctl destroy kafka@1

fleetctl destroy zookeeper-discovery@1

fleetctl destroy zookeeper@1

fleetctl list-units