#!/usr/bin/env bash
set -e

BASE_IMAGE=vzvu3k6k/redmine-cnb-base:latest
RUN_IMAGE=vzvu3k6k/redmine-cnb-run:latest
BUILD_IMAGE=vzvu3k6k/redmine-cnb-build:latest

DIR=$(dirname "${BASH_SOURCE[0]}")

docker build --build-arg "stack_id=io.github.vzvu3k6k.redmine" -t "${BASE_IMAGE}" ${DIR}/base

echo "Building ${BUILD_IMAGE}..."
docker build --build-arg "base_image=${BASE_IMAGE}" -t "${BUILD_IMAGE}" ${DIR}/build

echo "Building ${RUN_IMAGE}..."
docker build --build-arg "base_image=${BASE_IMAGE}" -t "${RUN_IMAGE}" ${DIR}/run
