#!/bin/bash

docker build -f 3.2.4.dockerfile -t runserve/typescript:3.2.4 .
docker build -f latest.dockerfile -t runserve/typescript:latest .
