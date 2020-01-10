#!/usr/bin/env bash
# $1 path to vault 
$1 write database/roles/readonly \
db_name=postgresql \
creation_statements=@POSTGRES/readonly.sql \
default_ttl="30s" \
max_ttl="30s"
