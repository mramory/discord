#!/usr/bin/env bash

docker compose down --remove-orphans  >/dev/null 2>&1

sleep 1

docker volume rm postgres_data \
                  >/dev/null 2>&1

exit 0 