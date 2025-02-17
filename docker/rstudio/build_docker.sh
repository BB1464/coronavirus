#!/bin/bash

echo "Build the docker"

docker build . -t rkrispin/coronavirus:rstudio.0.3.2

if [[ $? = 0 ]] ; then
echo "Pushing docker..."
docker push rkrispin/coronavirus:rstudio.0.3.2
else
echo "Docker build failed"
fi

