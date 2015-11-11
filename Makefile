.SILENT :
.PHONY : build clean deps

all: build

restart: stop run logs

build:
	echo "Building lastbackend/cedar docker image..."
	docker build --rm -t lastbackend/cedar .

clean:
	echo "Removing lastbackend/cedar docker image..."
	docker rmi lastbackend/cedar

test:
	echo "Test lastbackend/cedar image"
	docker run --rm -i -t \
		-v /opt/lastbackend/samples/node:/tmp/app \
		lastbackend/cedar /build
