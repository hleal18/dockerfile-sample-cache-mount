FROM ubuntu
# Allow ubuntu to cache package downloads
RUN rm -f /etc/apt/apt.conf.d/docker-clean
RUN \
    --mount=type=cache,target=/var/cache/apt \
    apt update && apt-get --no-install-recommends install -y gcc
