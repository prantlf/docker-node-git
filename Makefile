clean ::
	docker image rm node-git

lint ::
	docker run --rm -i \
		-v ${PWD}/.hadolint.yaml:/bin/hadolint.yaml \
		-e XDG_CONFIG_HOME=/bin hadolint/hadolint \
		< Dockerfile

build ::
	docker build -t node-git .

run ::
	docker run --rm -t -i node-git busybox sh

tag ::
	docker tag node-git prantlf/node-git:lts-alpine

login ::
	docker login --username=prantlf

push ::
	docker push prantlf/node-git:lts-alpine
