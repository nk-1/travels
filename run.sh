#!/bin/bash

docker run -d --rm -v $(pwd)/data:/tmp/data -v $(pwd):/opt/tarantool --name hlcup -p 8888:80 hlcup 