#!/bin/bash

# Start the database
docker compose up -d postgres

# Wait for the database to be ready
echo "Waiting for database to be ready..."
sleep 5

# Run Prisma migrations
echo "Running Prisma migrations..."
cd back && yarn migrate && cd ..

# Load fixtures
echo "Loading fixtures..."
cd back && yarn fixtures && cd ..

# Start the backend and frontend
gnome-terminal --tab --title="Backend" --working-directory="$(pwd)/back" -- bash -c "yarn start:dev"
gnome-terminal --tab --title="Frontend" --working-directory="$(pwd)/front" -- bash -c "yarn dev"
