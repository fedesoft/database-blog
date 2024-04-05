FROM postgres:13.14-alpine3.19

# Copy the SQL script into the container
COPY init.sql /docker-entrypoint-initdb.d/