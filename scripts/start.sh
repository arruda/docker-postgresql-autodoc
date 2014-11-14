#!/bin/bash

# Stop on error
set -e

DATA_DIR=/data


# Start postgresql_autodoc
echo "Generating png for $DB_PORT_5432_TCP_ADDR $DB_ENV_DB"
echo "User and pass: $DB_ENV_USER $DB_ENV_PASS"

postgresql_autodoc -t dot -h $DB_PORT_5432_TCP_ADDR -d $DB_ENV_DB -u $DB_ENV_USER --password=$DB_ENV_PASS
dot -Tpng $DATA_DIR/$DB_ENV_DB.dot -o $DATA_DIR/$DB_ENV_DB.png
