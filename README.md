# pygmo (docker image)

A minimal Docker image for [pygmo](https://esa.github.io/pygmo2/), built on top of Miniconda and Python 3.12, with pygmo installed from conda-forge. This repository provides a ready-to-use container for running pygmo-based optimization tasks in a reproducible environment.

## Features

- Based on Miniconda (from ghcr.io/koushikeng/miniconda)
- Python 3.12
- pygmo 2.19.7
- pygmo installed from conda-forge
- Strict channel priority for reproducibility

## Usage

### Pull the Image

You can pull the latest pre-built image from GitHub Container Registry:

```bash
docker pull ghcr.io/koushikeng/pygmo:latest
```

### Run an Interactive Shell

```bash
docker run -it --rm ghcr.io/koushikeng/pygmo:latest
```

### Use in a Dockerfile

You can also use this image as a base for your own Docker images:

```dockerfile
FROM ghcr.io/koushikeng/pygmo:latest
# Add your code or dependencies here
```

## Building the Image Locally

To build the image from this repository:

```bash
git clone https://github.com/koushikeng/pygmo-docker.git
cd pygmo-docker
docker build -t pygmo .
```

## About pygmo

[pygmo](https://esa.github.io/pygmo2/) is a scientific library for massively parallel optimization.

