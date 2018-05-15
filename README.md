0- Log in as root
	sudo bash

1- Setup demo
	./setup-demo.sh

2- Start demo
	./start-demo.sh

3- Test setup
	cd test-setup
	./test-artifactory.sh
	./test-registry.sh
	cd ..

4- Create concourse-demo-app in GitLab
	cd demo-sources
	./gitlab-publish-demo-app.sh
	cd ..

5- Create pipeline
	cd demo-pipeline
	./create-pipeline.sh
	cd ..


... Play with Concourse


6- Stop demo
	./stop-demo.sh

7- Remove demo
	./remove-demo.sh

