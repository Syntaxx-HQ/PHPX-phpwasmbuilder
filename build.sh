#!/bin/bash

# Read PHP_BRANCH from .env file
export $(cat .env | xargs)

# Build the Docker image
docker build --build-arg PHP_BRANCH=$PHP_BRANCH -t php-wasm . 
