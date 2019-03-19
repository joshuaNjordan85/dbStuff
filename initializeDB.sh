#!/usr/bin/env bash
docker run --name dbDemo -p "5432:5432" -d -e POSTGRES_PASSWORD=secret postgres
