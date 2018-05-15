#!/bin/sh


setupConcourseCLI() {
	echo "Waiting for Concourse"
	waitForConcourse
	echo "Concourse available!"

	CONCOURSE_TARGET="concourse-${CONCOURSE_TEAM}"

	fly \
		--target="${CONCOURSE_TARGET}" \
		login \
		--concourse-url="http://${CONCOURSE_HOST}:${CONCOURSE_PORT}" \
		--username="${CONCOURSE_BASIC_AUTH_USERNAME}" \
		--password="${CONCOURSE_BASIC_AUTH_PASSWORD}" \
		--team-name="${CONCOURSE_TEAM}"

	fly \
		--target="${CONCOURSE_TARGET}" \
		sync
}

waitForConcourse() {
	echo "Waiting for Concourse"

	confirmation=""
	while [ -z "${confirmation}" ]; do
		echo "Pinging Concourse"

		confirmation=$(curl "${CONCOURSE_HOST}:${CONCOURSE_PORT}" --head | grep "HTTP/1.1 200 OK")

		if [ $? -ne 0 ]; then
			confirmation=""
		fi

		if [ -z "${confirmation}" ]; then
			echo "Concourse not available. Sleeping for 5 seconds."
			confirmation=""
			sleep 5
		fi
	done
}


# Setup the CLI
setupConcourseCLI

# Wait forever to keep the container running
# Will use it with "docker run the-container bash"
sleep 100000
