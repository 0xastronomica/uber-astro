# Deployment Instructions for Ride-Sharing Application

This document provides instructions for deploying the ride-sharing application. The deployment process involves setting up the necessary infrastructure, configuring services, and ensuring that the application runs smoothly in a production environment.

## Prerequisites

Before deploying the application, ensure that you have the following:

- Docker and Docker Compose installed on your machine.
- Access to a Kubernetes cluster (if deploying using Kubernetes).
- Terraform installed (if using Terraform for infrastructure management).
- Necessary environment variables set up in a `.env` file based on the `.env.example`.

## Deployment Steps

### 1. Clone the Repository

Clone the repository to your local machine:

```bash
git clone <repository-url>
cd ride-sharing-app
```

### 2. Build Docker Images

Navigate to the root of the project and build the Docker images for all services:

```bash
docker-compose build
```

### 3. Start Services with Docker Compose

To start the application locally using Docker Compose, run:

```bash
docker-compose up
```

This command will start all the services defined in the `docker-compose.yml` file.

### 4. Deploy to Kubernetes

If you are deploying to a Kubernetes cluster, follow these steps:

1. Navigate to the Kubernetes configuration directory:

   ```bash
   cd infra/k8s/base
   ```

2. Apply the base configurations:

   ```bash
   kubectl apply -f .
   ```

3. If you have overlays, apply them as needed:

   ```bash
   kubectl apply -f ../overlays/<overlay-name>
   ```

### 5. Infrastructure Management with Terraform

If you are using Terraform for infrastructure management, follow these steps:

1. Navigate to the Terraform configuration directory:

   ```bash
   cd infra/terraform
   ```

2. Initialize Terraform:

   ```bash
   terraform init
   ```

3. Apply the Terraform configurations:

   ```bash
   terraform apply
   ```

### 6. Verify Deployment

After deploying, verify that all services are running correctly. You can check the logs of individual services using:

```bash
docker-compose logs <service-name>
```

For Kubernetes, you can check the status of the pods:

```bash
kubectl get pods
```

### 7. Access the Application

Once the services are running, you can access the application through the defined endpoints. Refer to the API documentation for specific routes and usage.

## Conclusion

Following these steps will help you successfully deploy the ride-sharing application. Ensure to monitor the services and check logs for any issues during the deployment process. For further assistance, refer to the documentation or seek help from the development team.