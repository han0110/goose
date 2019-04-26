#!/bin/sh

if [ "${MIGRATION_DB_INFO}" = "" ]; then
    MIGRATION_DB_INFO="host=${MIGRATION_DB_HOST:-127.0.0.1} \
        port=${MIGRATION_DB_PORT:-5432} \
        dbname=${MIGRATION_DB_NAME:-dev} \
        user=${MIGRATION_DB_USER:-dev} \
        password=${MIGRATION_DB_PASS:-dev} \
        sslmode=${MIGRATION_DB_SSL_MODE:-disable}"
fi

goose \
    "${MIGRATION_DRIVER:-postgres}" \
    "${MIGRATION_DB_INFO}" \
    $@
