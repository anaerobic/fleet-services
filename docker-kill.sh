echo STOPPING $(docker stop $(docker ps -a -q))

echo REMOVED $(docker rm $(docker ps -a -q))