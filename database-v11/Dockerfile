FROM postgres:11.5

COPY init-db.sh /docker-entrypoint-initdb.d

HEALTHCHECK --interval=10s --timeout=10s --retries=10 CMD psql -c 'select 1' -d ccd_data -U ${DB_USERNAME}
HEALTHCHECK --interval=10s --timeout=10s --retries=10 CMD psql -c 'select 1' -d ia_case_api -U ${DB_USERNAME}
HEALTHCHECK --interval=10s --timeout=10s --retries=10 CMD psql -c 'select 1' -d ia_timed_event_service -U ${DB_USERNAME}

EXPOSE 5432
