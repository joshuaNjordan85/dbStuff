[databases]
postgres = host=$DOCKERHOST dbname=postgres {{ with secret "database/creds/readonly" }} user={{ .Data.username }} password={{ .Data.password }}{{end}}
pool_mode = session
listen_port = 6543
listen_addr = $DOCKERHOST
stats_users = stat_collector
