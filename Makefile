VERSION = 4.0-alpine
IMAGE = chillheart/mongo:$(VERSION)

all:

image:
	docker build -t $(IMAGE) --no-cache .

publish:
docker push $(IMAGE)
