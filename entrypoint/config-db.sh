#!/bin/bash

mv -f /setup/postgresql.conf $PGDATA/postgresql.conf
chown -R postgres.postgres $PGDATA/postgresql.conf

/etc/init.d/postgresql restart
pg_createcluster -e LATIN1 9.2 main
