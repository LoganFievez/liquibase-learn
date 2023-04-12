#!/bin/bash
set -e

psql -v ON_ERROR_STOP=1 --username lfi --dbname lfi <<-EOSQL
	CREATE SCHEMA IF NOT EXISTS lfi;
  CREATE TABLE IF NOT EXISTS users ( id serial NOT NULL, name varchar NOT NULL);
  INSERT INTO users ("name") VALUES ('logan');
EOSQL
