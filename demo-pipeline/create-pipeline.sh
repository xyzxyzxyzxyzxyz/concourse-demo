# concourse-demo-app
fly \
	-t concourse-main \
	set-pipeline \
	-p concourse-demo-app \
	-c concourse-demo-app-pipeline.yml \
	-l pipeline-global-parameters.yml



