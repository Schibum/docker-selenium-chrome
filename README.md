## Dockerfile

This repository contains **Dockerfile** of Chrome and Selenium


### Dependencies

* [dockerfile/ubuntu-desktop](http://dockerfile.github.io/#/ubuntu-desktop)


### Installation

1. Install [Docker](https://www.docker.io/).

2. Build: `docker build -t schibum/docker-selenium-chrome` or just use the pre-built image


### Usage

    docker run -it --rm -p 4444:4444 -p 5555:5999 schibum/docker-selenium-chrome

Make sure to use `--no-sandbox` in your selenium config.
Connect to `vnc://<host>:5555` via VNC client.
