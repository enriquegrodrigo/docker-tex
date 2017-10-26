[![Docker Automated buil](https://img.shields.io/docker/automated/enriquegrodrigo/docker-tex.svg)](https://hub.docker.com/r/enriquegrodrigo/docker-tex/)
[![Docker Build Statu](https://img.shields.io/docker/build/enriquegrodrigo/docker-tex.svg)](https://hub.docker.com/r/enriquegrodrigo/docker-tex/)
# docker-tex

A Dockerized latex environment. 

## Docker Hub

One can easily obtain the latest image using:
```
docker pull enriquegrodrigo/docker-tex:latest
```

## Building the image 

For building the image:

```
git clone https://github.com/enriquegrodrigo/docker-tex.git
docker build -t="Name of the image"
```

## Usage

To compile a latex file from the latex project folder (uses latexmk): 

	docker run --rm -it -v $(pwd):/home/work/project enriquegrodrigo/docker-tex file.tex

To generate a file with the modifications from HEAD, one can use:

	docker run --rm -it -v $(pwd):/home/work/project enriquegrodrigo/docker-tex --diff file.tex
