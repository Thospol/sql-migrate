# SQL Migration

## Usage
```
$ make help
Available commands are:
    install                        Install required binaries
    check                          Check if all required binaries are installed correctly
    migrate-new                    Run go-migrate new sql
    migrate-up                     Run go-migrate up sql
    migrate-down                   Run go-migrate down sql
    migrate-force                  Run go-migrate force version
    migrate-version                Run go-migrate check version
    dbdocs-login                   dbdocs login
    dbdocs-build                   dbdocs build
    dbmltosql                      export dbml to sql
```

The `table` save logs version is `schema_migrations`.

## Example Migration

### create migrate
run this command `make migrate-new name=???`

### up migrate
- run migration run this command `make migrate-up`