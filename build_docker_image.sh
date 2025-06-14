#!/bin/bash

VERSION=$(cat version | cut -d '=' -f2 | tr -d ' \r')

echo "docker image version=$VERSION"

docker build -t web_fetch_wttr:$VERSION -f Dockerfile .