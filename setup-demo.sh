DEMO_DIR=$(pwd)

# Create demo data dir
DEMO_DATA_DIR=${DEMO_DIR}/demo-data
mkdir -p ${DEMO_DATA_DIR}

# Set up Concourse
${DEMO_DIR}/demo-scripts/setup-concourse.sh
