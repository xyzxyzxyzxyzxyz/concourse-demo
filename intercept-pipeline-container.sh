# Default: build number 2 (firsts execution always fails because the JAR wasn't there at the beginning)
BUILD_NUMBER=${1:-2}

echo "Intercepting build number: ${BUILD_NUMBER}"

docker-compose exec concourse-cli bash -c "fly -t concourse-main intercept --job=concourse-demo-app/build-docker-image --step=app-docker-image --build=${BUILD_NUMBER} --verbose"

