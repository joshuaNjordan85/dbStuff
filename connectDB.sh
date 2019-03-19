#!/usr/bin/env bash
# $1 path to vault
$1 write database/config/postgresql \
plugin_name=postgresql-database-plugin \
allowed_roles="*" \
connection_url=postgresql://{{username}}:{{password}}@$DOCKERHOST:5432/postgres?sslmode=disable \
username="postgres" \
password="secret"
