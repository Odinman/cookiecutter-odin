#!/bin/sh

service={{ cookiecutter.project_slug }}

drone exec --local --build-event local

# docker pull 127.0.0.1:5001/gladsheim/${service}:local
docker-compose -f docker/docker-compose-local.yml pull ${service}
docker-compose -f docker/docker-compose-local.yml up -d --no-deps ${service}

# clean
rmimages=$(docker images -f "dangling=true" -q)
if [ -n "$rmimages" ]; then
    echo "delete images: $rmimages"
    docker rmi $rmimages
else
    echo "not need delete dangling images"
fi
