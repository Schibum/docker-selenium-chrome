## Dockerfile

This repository contains **Dockerfile** of Chrome and Selenium


### Dependencies

* [dockerfile/ubuntu-desktop](http://dockerfile.github.io/#/ubuntu-desktop)


### Installation

1. Install [Docker](https://www.docker.io/).

2. Build: `docker build -t selenium-chrome`


### Usage

    docker run -it --rm -p 5901:5901 dockerfile/chrome
    docker run -it --rm -p 4444:4444 -p 5555:5999 -v /local/path:/data/foo selenium-chrome

Connect to `vnc://<host>:5555` via VNC client.
