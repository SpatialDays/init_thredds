IMAGENAME = satapps/init-thredds:${TAG}

build:
	docker build -t $(IMAGENAME) .

clean:
	docker images | awk -F' ' '{if ($$1=="$(IMAGENAME)") print $$3}' | xargs -r docker rmi

test:
	docker run --rm -t -i $(IMAGENAME) 100

push:
	docker push $(IMAGENAME)
