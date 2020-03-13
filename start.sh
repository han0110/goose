#!/bin/sh

DB_DRIVER=${DB_DRIVER:-postgres}

case "${DB_DRIVER}" in
    postgres)
        if [ ! ${DB_DSN} ]; then
            DB_DSN="host=${HOST:-127.0.0.1} \
                port=${PORT:-5432} \
                dbname=${DB_NAME:-dev} \
                user=${USER:-dev} \
                password=${PASSWORD:-dev} \
                sslmode=${SSL_MODE:-disable}"
        fi
        ;;
    *)
        echo "Driver not supported yet, abort"
        exit 1
        ;;
esac

goose \
    "${DB_DRIVER}" \
    "${DB_DSN}" \
    $@
