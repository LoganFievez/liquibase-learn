#!/bin/bash
set -e

psql -v ON_ERROR_STOP=1 --username "$POSTGRES_USER" --dbname "$POSTGRES_DB" <<-EOSQL
	CREATE USER lfi WITH password 'lfi' SUPERUSER CREATEDB CREATEROLE ;
  CREATE DATABASE lfi WITH OWNER lfi;
  GRANT ALL PRIVILEGES ON DATABASE lfi TO lfi;
EOSQL
