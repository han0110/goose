# Migration Tool Goose Dockerfile

## Usage

```bash
docker run han0110/goose up
```

## Environment Variables

- `DRIVER`: Database driver to use, default to `postgres`

- `HOST`: `host` to connect, default to `127.0.0.1`

- `PORT`: `port` to connect, default to `5432`

- `DB_NAME`: `dbname` to connect, default to `dev`

- `USER`: `user` to use, default to `dev`

- `PASSWORD`: `password` to use, default to `dev`

- `SSL_MODE`: `sslmode`, default to `disable`
