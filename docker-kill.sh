echo KILLED $(docker kill $(docker ps -a -q))

echo REMOVED $(docker rm $(docker ps -a -q))