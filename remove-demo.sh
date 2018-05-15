DEMO_DIR=$(pwd)
DEMO_DATA_DIR=${DEMO_DIR}/demo-data

# Remove containers and their volumes, stopping them first if required
docker-compose rm --stop --force -v

# Remove demo data dir
if [ -d ${DEMO_DATA_DIR} ]; then
   rm -R ${DEMO_DATA_DIR}
fi


