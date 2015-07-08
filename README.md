# fleet-services
Running Services as Units in CoreOS + Fleet + Etcd + Docker

## Setup
```vagrant up``` your CoreOS cluster with https://github.com/anaerobic/coreos-vagrant and remember to replace the etcd discovery token in user-data with a new one from https://discovery.etcd.io/new

Pro Tip: map fleet-services as a guest folder in config.rb to make experimenting easier, ie:

```$shared_folders = { '../fleet-services' => '/services' }```

## K it's up, now what?
* Get yourself set up with Terminator and ```vagrant ssh core-0* -- -A``` into each of the machines
* Run ```etcdctl watch /services --recursive --forever``` in one of your terminals
* Run ```cd /services/gener8-race``` and ```sh start-services.sh``` and watch the magic happen!

Pro Tip: Try running ```fleetctl journal -f <unit-name>``` in a few terminals to watch each service's output in real-time

(╯°□°)╯︵ ┻━┻
