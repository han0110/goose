#!/bin/sh

case "${DRIVER}" in
    postgres)
        DSN="host=${HOST:-127.0.0.1} \
            port=${PORT:-5432} \
            dbname=${DB_NAME:-dev} \
            user=${USER:-dev} \
            password=${PASSWORD:-dev} \
            sslmode=${SSL_MODE:-disable}"
        ;;
    *)
        echo "Driver not supported yet, abort"
        exit 1
        ;;
esac

goose \
    "${DRIVER}" \
    "${DSN}" \
    $@
