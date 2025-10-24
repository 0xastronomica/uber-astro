# API Documentation for Ride-Sharing Application

## Overview

This document provides an overview of the API endpoints available in the ride-sharing application. The API follows RESTful principles and is designed to facilitate communication between the client applications (web and mobile) and the backend services.

## Base URL

The base URL for all API requests is:

```
http://api.ride-sharing-app.com/v1
```

## Authentication

All API requests require authentication. Use the following method to authenticate:

- **Token-based Authentication**: Include the token in the `Authorization` header as follows:
  
  ```
  Authorization: Bearer <token>
  ```

## Endpoints

### 1. User Authentication

#### POST /auth/login

- **Description**: Authenticates a user and returns a token.
- **Request Body**:
  ```json
  {
    "email": "user@example.com",
    "password": "yourpassword"
  }
  ```
- **Response**:
  - **200 OK**: Returns the authentication token.
  - **401 Unauthorized**: Invalid credentials.

#### POST /auth/register

- **Description**: Registers a new user.
- **Request Body**:
  ```json
  {
    "name": "John Doe",
    "email": "user@example.com",
    "password": "yourpassword"
  }
  ```
- **Response**:
  - **201 Created**: User registered successfully.
  - **400 Bad Request**: Validation errors.

### 2. Rider Services

#### GET /riders/me

- **Description**: Retrieves the current rider's profile.
- **Response**:
  - **200 OK**: Returns rider profile information.

#### POST /rides/request

- **Description**: Requests a ride.
- **Request Body**:
  ```json
  {
    "pickup_location": {
      "latitude": 12.34,
      "longitude": 56.78
    },
    "dropoff_location": {
      "latitude": 23.45,
      "longitude": 67.89
    }
  }
  ```
- **Response**:
  - **201 Created**: Ride request created successfully.
  - **400 Bad Request**: Invalid request parameters.

### 3. Driver Services

#### GET /drivers/me

- **Description**: Retrieves the current driver's profile.
- **Response**:
  - **200 OK**: Returns driver profile information.

#### POST /rides/accept/{rideId}

- **Description**: Accepts a ride request.
- **Response**:
  - **200 OK**: Ride accepted successfully.
  - **404 Not Found**: Ride not found.

### 4. Billing Services

#### POST /billing/charge

- **Description**: Charges the rider for a completed ride.
- **Request Body**:
  ```json
  {
    "ride_id": "ride123",
    "amount": 15.00
  }
  ```
- **Response**:
  - **200 OK**: Charge processed successfully.
  - **400 Bad Request**: Invalid charge details.

## Error Handling

All API responses include a standard error format:

```json
{
  "error": {
    "code": "ERROR_CODE",
    "message": "Error message describing the issue."
  }
}
```

## Conclusion

This API documentation provides a high-level overview of the available endpoints for the ride-sharing application. For further details on each endpoint, including additional parameters and response formats, please refer to the individual service documentation.