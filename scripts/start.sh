#!/bin/bash
# Start frontend and backend services

echo "Starting backend..."
(cd apps/backend && go run cmd/main.go) &

echo "Starting frontend..."
(cd apps/frontend && npm run dev) &

wait