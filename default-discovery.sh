#!/bin/bash

for i in "$@"
do
	echo "param" + $i
	case $i in 
		-d|--docker)
			docker_name="$2"
			shift
		;;
		-e|--etcddir)
			etcd_directory="$2"
			shift
		;;
		-p|--port)
			echo "Found port " + $2
			port_list+=($2)
			shift
		;;
		-ip)
			echo "Found ip " + $2
			public_ip="$2"
			shift
		;;
		-h|--hostname)
			hostname="$2"
			shift
		;;
		*)
			shift #unknown option
		;;
	esac
done

while true; do
	for port in "${port_list[@]}"
	do
		IFS='=' read -a port_info <<< "$port"
		echo ${port_info[@]};
		port_name=${port_info[0]}
		exposed_port=$(docker inspect -f "{{(index (index .NetworkSettings.Ports \"${port_info[1]}\") 0).HostPort}}" $docker_name)
		ncat ${public_ip} ${exposed_port} < /dev/null
		if [ $? -eq 0 ]; then
                        etcdctl mkdir /services/${etcd_directory} -ttl 30;
                        if [ $? -ne 0 ]; then
                                etcdctl updatedir /services/${etcd_directory} -ttl 30;
                        fi;
                        etcdctl set /services/${etcd_directory}/host ${hostname} -ttl 30;
                        etcdctl set /services/${etcd_directory}/ip ${public_ip} -ttl 30;
                        etcdctl set /services/${etcd_directory}/port/${port_name} ${exposed_port} --ttl 30;
                else
                        etcdctl rm --recursive /services/${etcd_directory};
                fi;
                sleep 25; 
	done;
done;
		














