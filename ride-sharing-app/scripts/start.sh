#!/bin/bash

# Navigate to the project directory
cd "$(dirname "$0")/.."

# Start the services using Docker Compose
docker-compose up -d

# Wait for services to be ready
echo "Waiting for services to be ready..."
sleep 10

# Run database migrations (if applicable)
# Uncomment the following line if you have a migration script
# docker-compose exec api-gateway npm run migrate

# Open the application in the default browser
"$BROWSER" http://localhost:3000

echo "Ride-sharing application started successfully!"