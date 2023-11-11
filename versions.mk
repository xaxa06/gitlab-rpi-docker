# upstream: https://packages.gitlab.com/gitlab/raspberry-pi2
# arm64 not supported on rpi, so let's use armhf (see https://docs.gitlab.com/omnibus/settings/rpi.html)
RELEASE_ARCH=armhf
RELEASE_PACKAGE=gitlab-ce
RELEASE_VERSION=16.3.6-ce.0