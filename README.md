# Migration Tool Goose Dockerfile

## Usage

```bash
docker run han0110/goose up
```

## Environment Variables

- `MIGRATION_DRIVER`: Database driver to use, default to `postgres`

- `MIGRATION_DB_HOST`: Database `host` to connect, default to `127.0.0.1`

- `MIGRATION_DB_PORT`: Database `port` to connect, default to `5432`

- `MIGRATION_DB_NAME`: Database `dbname` to connect, default to `dev`

- `MIGRATION_DB_USER`: Database `user` to use, default to `dev`

- `MIGRATION_DB_PASS`: Database `password` to use, default to `dev`

- `MIGRATION_DB_SSL_MODE`: Database `sslmode`, default to `disable`
