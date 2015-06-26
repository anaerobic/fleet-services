#!/bin/sh

fleetctl stop consume-reads@1

fleetctl stop generate-race@1

fleetctl stop hello-race@1

fleetctl stop kafka-discovery@1

fleetctl stop kafka@1

fleetctl stop zookeeper-discovery@1

fleetctl stop zookeeper@1

fleetctl list-units