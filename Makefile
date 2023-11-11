include ./versions.mk

omnibus-gitlab:
	git clone https://gitlab.com/gitlab-org/omnibus-gitlab.git \
	&& cd omnibus-gitlab \
	&& git apply ../gitlab-docker-arm.patch

build: omnibus-gitlab
	@echo Docker build using ${RELEASE_PACKAGE}/${RELEASE_VERSION}
	docker build omnibus-gitlab/docker \
		-t gitlab-ce:${RELEASE_VERSION}-${RELEASE_ARCH} \
		--build-arg RELEASE_PACKAGE=${RELEASE_PACKAGE} \
		--build-arg RELEASE_VERSION=${RELEASE_VERSION} \
		--build-arg RELEASE_ARCH=${RELEASE_ARCH}

clean:
	rm -rf omnibus-gitlab