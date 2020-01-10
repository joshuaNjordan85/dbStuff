jdbcUrl=jdbc:mysql://localhost:3306/testdb?useSSL=false
dataSource.user={{ with secret "database/creds/readonly" }} user={{ .Data.username }} {{ end }}
dataSource.password={{ with secret "database/creds/readonly" }} password={{ .Data.password }} {{ end }}
dataSource.cachePrepStmts=true
dataSource.prepStmtCacheSize=250
dataSource.prepStmtCacheSqlLimit=2048
