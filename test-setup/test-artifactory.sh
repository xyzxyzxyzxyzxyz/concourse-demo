# Push a JAR to the repo
CREATE_RESULT=$(curl -i -X PUT -u admin:password -T "./disruptor-3.2.1.jar" "http://localhost:30002/artifactory/example-repo-local/com/lmax/disruptor/3.2.1/disruptor-3.2.1.jar")
echo ${CREATE_RESULT}

CREATE_RESULT=$(echo ${CREATE_RESULT} | grep "201 Created")

# Check it worked
if [ -z "${CREATE_RESULT}" ]; then
	echo "================== Artifactory not working"
	exit -1
else
	echo "================== Artifactory is working!!"
	curl -i -X DELETE -u admin:password "http://localhost:30002/artifactory/example-repo-local/com/lmax/disruptor/3.2.1/disruptor-3.2.1.jar"
	exit 0
fi

