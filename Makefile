clean ::
	docker image rm node-git

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
