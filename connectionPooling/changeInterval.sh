##!/usr/bin/env bash
while true; \
do curl -X PUT -d "false" "http://$DOCKERHOST:8500/v1/kv/db/postgres" && \
curl -X PUT -d "true" "http://$DOCKERHOST:8500/v1/kv/db/postgres"; \
sleep $1; \
done
