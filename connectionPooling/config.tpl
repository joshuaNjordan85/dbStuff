[databases]
postgres = host=$DOCKERHOST dbname=postgres {{if key "db/postgres" | parseBool}}{{ with secret "database/creds/readonly" }} user={{ .Data.username }} password={{ .Data.password }}{{end}}{{end}}
pool_mode = session
listen_port = 6543
listen_addr = $DOCKERHOST
stats_users = stat_collector
