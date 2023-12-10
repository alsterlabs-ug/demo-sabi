run: 
	docker run --name matny -d -p 3000:3000 matny

run-it:
	docker run --name matny -it -p 3000:3000 matny

build:
	docker build . -t matny

build-remote:
	# docker stop matny
	# docker rm matny
	docker rmi matny
	docker build . -t matny --platform linux/amd64
	docker tag matny gcr.io/sabisin/matny
	docker push gcr.io/sabisin/matny
