FROM postgres:14
COPY ./db/schema.sql /docker-entrypoint-initdb.d/00-schema.sql
COPY ./db/data.sql /docker-entrypoint-initdb.d/01-data.sql

