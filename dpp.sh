#!/bin/sh



# REPOSITORY          TAG                 IMAGE ID            CREATED             SIZE
# jenkins             latest              559583270b4f        3 days ago          714 MB
# openjdk             latest              d100e2637073        6 days ago          643 MB
# gitlab/gitlab-ce    latest              9601b6db2ed6        2 weeks ago         1.1 GB
# nginx               latest              46102226f2fd        2 weeks ago         109 MB
# ruby                latest              03f5d188b6ac        2 weeks ago         678 MB
# node                latest              90223b3d894e        2 weeks ago         665 MB
# mongo               latest              6329fba85f65        2 weeks ago         360 MB
# ubuntu              latest              f7b3f317ec73        2 weeks ago         117 MB
# jekyll/jekyll       latest              21664d1e0f67        5 weeks ago         275 MB
# python              latest              787e9f4da78e        7 weeks ago         689 MB
# alpine              latest              4a415e366388        2 months ago        3.99 MB



docker_pull()
{
    echo "Pulling $1"
    docker pull $1 &> /dev/null
}

# base images
images="alpine nginx"

echo "Pulling images..."
for image in $images; do
    docker_pull $image
done


# clean old images
echo "Cleaning old images..."
docker rmi $(docker images -f "dangling=true" -q) &> /dev/null

# show the updated docker images
echo
docker image list
echo
echo "Done."
