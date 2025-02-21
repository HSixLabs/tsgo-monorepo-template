#!/bin/bash
# Setup script for the monorepo

echo "Installing frontend dependencies..."
cd apps/frontend && npm install

echo "Installing backend dependencies..."
cd ../backend && go mod tidy

echo "Setup complete!"