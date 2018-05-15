# Push an image to the registry
docker pull hello-world:latest 
docker tag hello-world:latest localhost:30004/my-hello-world:latest
docker push localhost:30004/my-hello-world:latest --disable-content-trust

# Check it worked
if [ $? -ne 0 ]; then
	echo "================== Registry not working"
	exit -1
else
	echo "================== Registry is working!!"
	docker rmi localhost:30004/my-hello-world:latest
	exit 0
fi

