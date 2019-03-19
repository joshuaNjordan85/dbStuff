#!/usr/bin/env bash
docker exec -it dbDemo psql -h $DOCKERHOST -U $1 postgres
