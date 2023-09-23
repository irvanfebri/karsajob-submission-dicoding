#!/bin/sh

#build docker image from Dockerfile from current directory with name lionelritchie29/karsajobs-ui and tag latest
docker build -t irvanfebri/karsajobs-ui:latest .
echo '\n\n' #print new line to give some space

# create a new image tag from source image, still refer to the same image, but have different name/tag
docker tag irvanfebri/karsajobs-ui:latest ghcr.io/irvanfebri/karsajobs-ui:latest
echo '\n\n' #print new line to give some space


# login to github packages
echo $GITHUB_PACKAGES_TOKEN | docker login ghcr.io -u irvanfebri --password-stdin
echo '\n\n' #print new line to give some space

# push the built image to github packages
docker push ghcr.io/irvanfebri/karsajobs-ui:latest
echo '\n\n' #print new line to give some space