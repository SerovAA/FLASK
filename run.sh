#!/bin/bash

set -e

service postgresql start

until pg_isready; do
  echo "Waiting for postgres..."
  sleep 2
done

sudo -u postgres psql -d example_db -f init.sql

make run