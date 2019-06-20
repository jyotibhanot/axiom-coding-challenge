#CleanUp Containers
echo "Cleaning Up Containers"
docker ps -a | grep -iv name |awk '{print $1}' | xargs docker rm -f

# CleanUp Images
echo "Cleaning Up Images"
docker images | grep -iv image | awk '{print $3}' | xargs docker rmi -f

