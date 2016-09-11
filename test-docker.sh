#!/bin/sh
set -eufx
CONTAINER=$(docker run -d -v $PWD/test/pyload-config:/opt/pyload/pyload-config -v $PWD/test/downloads:/opt/pyload/Downloads --name pyload  -p 8000:8000 -P pyload)
echo "Sleeping ... "
sleep 5
docker logs $CONTAINER
