#!/bin/bash

# This script is used to deploy the ride-sharing application.

# Set environment variables
export $(cat .env.example | xargs)

# Build Docker images
docker-compose build

# Deploy the application using Docker Compose
docker-compose up -d

# Wait for services to be ready
echo "Waiting for services to be ready..."
sleep 30

# Run database migrations (if applicable)
# Uncomment and modify the following line if you have migrations
# docker-compose exec api-gateway npm run migrate

echo "Deployment completed successfully!"