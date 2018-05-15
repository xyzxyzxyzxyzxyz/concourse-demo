DEMO_DATA_DIR=$(pwd)/demo-data
CONCOURSE_DATA_DIR=${DEMO_DATA_DIR}/concourse

mkdir -p ${CONCOURSE_DATA_DIR}/keys/web ${CONCOURSE_DATA_DIR}/keys/worker

ssh-keygen -t rsa -f ${CONCOURSE_DATA_DIR}/keys/web/tsa_host_key -N ''
ssh-keygen -t rsa -f ${CONCOURSE_DATA_DIR}/keys/web/session_signing_key -N ''

ssh-keygen -t rsa -f ${CONCOURSE_DATA_DIR}/keys/worker/worker_key -N ''

cp ${CONCOURSE_DATA_DIR}/keys/worker/worker_key.pub ${CONCOURSE_DATA_DIR}/keys/web/authorized_worker_keys
cp ${CONCOURSE_DATA_DIR}/keys/web/tsa_host_key.pub ${CONCOURSE_DATA_DIR}/keys/worker


