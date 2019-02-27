#!/bin/bash

docker build -f 7.3.1.dockerfile -t runserve/angular:7.3.1 .
docker build -f 7.3.2.dockerfile -t runserve/angular:7.3.2 .
docker build -f 7.3.3.dockerfile -t runserve/angular:7.3.3 .
docker build -f 7.3.3.dockerfile -t runserve/angular:latest .
