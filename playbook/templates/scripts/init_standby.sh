#!/bin/sh

[ ! -f "$PGDATA/pg_hba.conf" ] && rm -rf $PGDATA/* && pg_basebackup -h ${POSTGRES_PRIMARY_HOST} -p 5432 -U ${POSTGRES_USER} --no-password -D $PGDATA -Fp -Xs -R
touch $PGDATA/standby.signal
