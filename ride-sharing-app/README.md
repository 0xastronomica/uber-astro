# Ride-Sharing Application

Welcome to the Ride-Sharing Application project! This project aims to provide a platform similar to Uber, enabling users to request rides and drivers to accept those requests. Below you will find the necessary information to set up and run the application.

## Table of Contents

- [Features](#features)
- [Technologies](#technologies)
- [Setup Instructions](#setup-instructions)
- [Usage](#usage)
- [Contributing](#contributing)
- [License](#license)

## Features

- User registration and authentication
- Ride request and matching system
- Real-time tracking of rides
- Payment processing
- Notifications for users and drivers

## Technologies

- Node.js
- TypeScript
- Docker
- Kubernetes
- React (for web client)
- React Native (for mobile app)
- Terraform (for infrastructure management)

## Setup Instructions

1. **Clone the repository:**

   ```bash
   git clone <repository-url>
   cd ride-sharing-app
   ```

2. **Install dependencies:**

   For each service, navigate to the service directory and run:

   ```bash
   npm install
   ```

3. **Set up environment variables:**

   Copy the `.env.example` file to `.env` and fill in the required values.

4. **Run the application using Docker:**

   ```bash
   docker-compose up
   ```

5. **Access the application:**

   - Web client: [http://localhost:3000](http://localhost:3000)
   - Mobile app: Follow the instructions in the mobile directory to run the React Native app.

## Usage

- **For Riders:** Sign up, log in, and request a ride.
- **For Drivers:** Sign up, log in, and accept ride requests.

## Contributing

We welcome contributions! Please read our [contributing guidelines](docs/contributing.md) for more information on how to get involved.

## License

This project is licensed under the MIT License. See the [LICENSE](LICENSE) file for details.