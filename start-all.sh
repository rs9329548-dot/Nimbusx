#!/usr/bin/env bash
set -e
ROOT="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

echo "Starting backend..."
(cd "$ROOT/backend" && ./mvnw spring-boot:run) &
backend_pid=$!

sleep 2

echo "Starting frontend..."
cd "$ROOT/frontend"
npm run dev

wait $backend_pid
