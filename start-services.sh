#!/bin/sh

fleetctl start zookeeper@1

fleetctl start zookeeper-discovery@1

fleetctl start kafka@1

fleetctl start kafka-discovery@1

#fleetctl start hello-race@1

fleetctl start generate-race@1

fleetctl start consume-reads@1

fleetctl list-units