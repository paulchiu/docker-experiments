#!/bin/sh
docker kill `docker ps --no-trunc -aq`
