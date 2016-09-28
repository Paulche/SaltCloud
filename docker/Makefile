# vim: set noexpandtab:
.PHONY: build push

build: Dockerfile
	docker build -t pchechetin/salt_spree_app .

push: build
	docker push pchechetin/salt_spree_app

