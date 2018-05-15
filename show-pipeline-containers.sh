BUILD_NUMBER=${1:-1}

echo "Intercepting build number: ${BUILD_NUMBER}"

docker-compose exec concourse-cli bash -c "fly -t concourse-main containers --verbose"

