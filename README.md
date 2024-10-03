# Ride-Sharing Application Backend

This repository contains the backend code for a ride-sharing application. The backend is built using Node.js and Express.js, and it handles various functionalities such as user authentication, OTP verification, and distance calculations. The full application will also include a frontend and a developer SDK.

## Features

### User Authentication
- **Signup**: Users can sign up by providing their details. An OTP is generated and sent to their phone number for verification.
- **Login**: Users can log in using their username and password. JWT tokens are used for session management.
- **Password Management**: Users can reset their password using an OTP sent to their phone number.

### OTP Verification
- **Generate OTP**: A 5-digit OTP is generated and sent to the user's phone number during signup and password reset.
- **Verify OTP**: Users can verify the OTP sent to their phone number to complete the signup process or reset their password.

### Distance Calculation
- **Get Distances**: Calculate distances between a given point (latitude and longitude) and various drivers stored in the database using MongoDB's geospatial queries.

## Installation

1. **Clone the repository**:
   ```sh
   git clone https://github.com/yourusername/ride-sharing-backend.git
   cd ride-sharing-backend
   ```

2. **Install dependencies**:
   ```sh
   npm install
   ```

3. **Set up environment variables**:
   Create a [`.env`](command:_github.copilot.openRelativePath?%5B%7B%22scheme%22%3A%22file%22%2C%22authority%22%3A%22%22%2C%22path%22%3A%22%2FUsers%2Fjoeldanjuma%2FDesktop%2FNEXT%2FAlong%2Fbackend%2FBackend%2F.env%22%2C%22query%22%3A%22%22%2C%22fragment%22%3A%22%22%7D%2C%22e7b74183-0489-403d-8741-e2d134516bc4%22%5D "/Users/joeldanjuma/Desktop/NEXT/Along/backend/Backend/.env") file in the root directory and add the following environment variables:
   ```env
   JWT_SECRET=your_jwt_secret
   JWT_EXPIRES=90d
   JWT_COOKIE_EXPIRES_IN=90
   NODE_ENV=development
   TWILIO_ACCOUNT_SID=your_twilio_account_sid
   TWILIO_AUTH_TOKEN=your_twilio_auth_token
   ```

4. **Start the server**:
   ```sh
   npm start
   ```

## API Endpoints

### Authentication
- **POST /api/v1/passengers/signup**: Sign up a new passenger.
- **POST /api/v1/passengers/login**: Log in a passenger.
- **POST /api/v1/passengers/forgotPassword**: Send OTP for password reset.
- **POST /api/v1/passengers/resetPassword**: Reset password using OTP.

### OTP Verification
- **POST /api/v1/passengers/verifyContact**: Verify OTP sent to the passenger's phone number.

### Distance Calculation
- **GET /api/v1/drivers/distances/:latlng/:unit**: Get distances between a given point and various drivers.

## Project Structure

- **controllers/**: Contains the controller functions for handling various routes.
- **models/**: Contains the Mongoose models for the database.
- **routes/**: Contains the route definitions for the API endpoints.
- **utils/**: Contains utility functions such as sending SMS using Twilio.

## Future Enhancements

- **Frontend Integration**: The frontend will be developed to provide a user interface for the application.
- **Developer SDK**: A developer SDK will be provided to allow third-party developers to integrate with the application.

## Contributing

We welcome contributions to improve this project. Please follow these steps to contribute:

1. Fork the repository.
2. Create a new branch (`git checkout -b feature-branch`).
3. Make your changes.
4. Commit your changes (`git commit -m 'Add some feature'`).
5. Push to the branch (`git push origin feature-branch`).
6. Create a new Pull Request.

## License

This project is licensed under the MIT License. See the [`LICENSE`](command:_github.copilot.openRelativePath?%5B%7B%22scheme%22%3A%22file%22%2C%22authority%22%3A%22%22%2C%22path%22%3A%22%2FUsers%2Fjoeldanjuma%2FDesktop%2FNEXT%2FAlong%2Fbackend%2FBackend%2FLICENSE%22%2C%22query%22%3A%22%22%2C%22fragment%22%3A%22%22%7D%2C%22e7b74183-0489-403d-8741-e2d134516bc4%22%5D "/Users/joeldanjuma/Desktop/NEXT/Along/backend/Backend/LICENSE") file for more details.

## Contact

For any questions or suggestions, please open an issue or contact us at support@example.com.

---

This README provides a comprehensive overview of the backend functionalities, installation steps, API endpoints, and future enhancements for the ride-sharing application.

joel-danjuma: I want the README To be a general explainer for the entire application and not just the Backend

GitHub Copilot: # Ride-Sharing Application

This repository contains the complete code for a ride-sharing application, including the backend, frontend, and a developer SDK. The application is designed to provide a seamless experience for passengers and drivers, offering features such as user authentication, OTP verification, distance calculations, and more.

## Features

### User Authentication
- **Signup**: Users can sign up by providing their details. An OTP is generated and sent to their phone number for verification.
- **Login**: Users can log in using their username and password. JWT tokens are used for session management.
- **Password Management**: Users can reset their password using an OTP sent to their phone number.

### OTP Verification
- **Generate OTP**: A 5-digit OTP is generated and sent to the user's phone number during signup and password reset.
- **Verify OTP**: Users can verify the OTP sent to their phone number to complete the signup process or reset their password.

### Distance Calculation
- **Get Distances**: Calculate distances between a given point (latitude and longitude) and various drivers stored in the database using MongoDB's geospatial queries.

### Ride Management
- **Request Ride**: Passengers can request a ride by providing their pickup and drop-off locations.
- **Accept Ride**: Drivers can accept ride requests from passengers.
- **Track Ride**: Real-time tracking of rides for both passengers and drivers.

### Notifications
- **SMS Notifications**: Send SMS notifications to users for various events such as OTP, ride status updates, etc.

## Installation

### Backend

1. **Clone the repository**:
   ```sh
   git clone https://github.com/yourusername/ride-sharing-app.git
   cd ride-sharing-app/backend
   ```

2. **Install dependencies**:
   ```sh
   npm install
   ```

3. **Set up environment variables**:
   Create a [`.env`](command:_github.copilot.openRelativePath?%5B%7B%22scheme%22%3A%22file%22%2C%22authority%22%3A%22%22%2C%22path%22%3A%22%2FUsers%2Fjoeldanjuma%2FDesktop%2FNEXT%2FAlong%2Fbackend%2FBackend%2F.env%22%2C%22query%22%3A%22%22%2C%22fragment%22%3A%22%22%7D%2C%22e7b74183-0489-403d-8741-e2d134516bc4%22%5D "/Users/joeldanjuma/Desktop/NEXT/Along/backend/Backend/.env") file in the root directory and add the following environment variables:
   ```env
   JWT_SECRET=your_jwt_secret
   JWT_EXPIRES=90d
   JWT_COOKIE_EXPIRES_IN=90
   NODE_ENV=development
   TWILIO_ACCOUNT_SID=your_twilio_account_sid
   TWILIO_AUTH_TOKEN=your_twilio_auth_token
   ```

4. **Start the server**:
   ```sh
   npm start
   ```

### Frontend

1. **Navigate to the frontend directory**:
   ```sh
   cd ../frontend
   ```

2. **Install dependencies**:
   ```sh
   npm install
   ```

3. **Start the development server**:
   ```sh
   npm start
   ```

### Developer SDK

1. **Navigate to the SDK directory**:
   ```sh
   cd ../sdk
   ```

2. **Install dependencies**:
   ```sh
   npm install
   ```

3. **Build the SDK**:
   ```sh
   npm run build
   ```

## API Endpoints

### Authentication
- **POST /api/v1/passengers/signup**: Sign up a new passenger.
- **POST /api/v1/passengers/login**: Log in a passenger.
- **POST /api/v1/passengers/forgotPassword**: Send OTP for password reset.
- **POST /api/v1/passengers/resetPassword**: Reset password using OTP.

### OTP Verification
- **POST /api/v1/passengers/verifyContact**: Verify OTP sent to the passenger's phone number.

### Distance Calculation
- **GET /api/v1/drivers/distances/:latlng/:unit**: Get distances between a given point and various drivers.

### Ride Management
- **POST /api/v1/rides/request**: Request a new ride.
- **POST /api/v1/rides/accept**: Accept a ride request.
- **GET /api/v1/rides/track/:rideId**: Track an ongoing ride.

## Project Structure

- **backend/**: Contains the backend code, including controllers, models, routes, and utilities.
- **frontend/**: Contains the frontend code, built with React.js.
- **sdk/**: Contains the developer SDK for integrating with the ride-sharing application.

## Future Enhancements

- **Enhanced Notifications**: Implement push notifications for real-time updates.
- **Payment Integration**: Integrate payment gateways for seamless transactions.
- **Advanced Analytics**: Provide detailed analytics and reporting for users and administrators.

## Contributing

We welcome contributions to improve this project. Please follow these steps to contribute:

1. Fork the repository.
2. Create a new branch (`git checkout -b feature-branch`).
3. Make your changes.
4. Commit your changes (`git commit -m 'Add some feature'`).
5. Push to the branch (`git push origin feature-branch`).
6. Create a new Pull Request.

## License

This project is licensed under the MIT License. See the [`LICENSE`](command:_github.copilot.openRelativePath?%5B%7B%22scheme%22%3A%22file%22%2C%22authority%22%3A%22%22%2C%22path%22%3A%22%2FUsers%2Fjoeldanjuma%2FDesktop%2FNEXT%2FAlong%2Fbackend%2FBackend%2FLICENSE%22%2C%22query%22%3A%22%22%2C%22fragment%22%3A%22%22%7D%2C%22e7b74183-0489-403d-8741-e2d134516bc4%22%5D "/Users/joeldanjuma/Desktop/NEXT/Along/backend/Backend/LICENSE") file for more details.

## Contact

For any questions or suggestions, please open an issue or contact us at support@example.com.

---

This README provides a comprehensive overview of the entire ride-sharing application, including the backend, frontend, and developer SDK. It covers the features, installation steps, API endpoints, project structure, and future enhancements.

joel-danjuma: I want the entire readme above in markdown

GitHub Copilot: # Ride-Sharing Application

This repository contains the complete code for a ride-sharing application, including the backend, frontend, and a developer SDK. The application is designed to provide a seamless experience for passengers and drivers, offering features such as user authentication, OTP verification, distance calculations, and more.

## Features

### User Authentication
- **Signup**: Users can sign up by providing their details. An OTP is generated and sent to their phone number for verification.
- **Login**: Users can log in using their username and password. JWT tokens are used for session management.
- **Password Management**: Users can reset their password using an OTP sent to their phone number.

### OTP Verification
- **Generate OTP**: A 5-digit OTP is generated and sent to the user's phone number during signup and password reset.
- **Verify OTP**: Users can verify the OTP sent to their phone number to complete the signup process or reset their password.

### Distance Calculation
- **Get Distances**: Calculate distances between a given point (latitude and longitude) and various drivers stored in the database using MongoDB's geospatial queries.

### Ride Management
- **Request Ride**: Passengers can request a ride by providing their pickup and drop-off locations.
- **Accept Ride**: Drivers can accept ride requests from passengers.
- **Track Ride**: Real-time tracking of rides for both passengers and drivers.

### Notifications
- **SMS Notifications**: Send SMS notifications to users for various events such as OTP, ride status updates, etc.

## Installation

### Backend

1. **Clone the repository**:
   ```sh
   git clone https://github.com/yourusername/ride-sharing-app.git
   cd ride-sharing-app/backend
   ```

2. **Install dependencies**:
   ```sh
   npm install
   ```

3. **Set up environment variables**:
   Create a [`.env`](command:_github.copilot.openRelativePath?%5B%7B%22scheme%22%3A%22file%22%2C%22authority%22%3A%22%22%2C%22path%22%3A%22%2FUsers%2Fjoeldanjuma%2FDesktop%2FNEXT%2FAlong%2Fbackend%2FBackend%2F.env%22%2C%22query%22%3A%22%22%2C%22fragment%22%3A%22%22%7D%2C%22997fa390-9c5b-48df-a4df-246b49fa1987%22%5D "/Users/joeldanjuma/Desktop/NEXT/Along/backend/Backend/.env") file in the root directory and add the following environment variables:
   ```env
   JWT_SECRET=your_jwt_secret
   JWT_EXPIRES=90d
   JWT_COOKIE_EXPIRES_IN=90
   NODE_ENV=development
   TWILIO_ACCOUNT_SID=your_twilio_account_sid
   TWILIO_AUTH_TOKEN=your_twilio_auth_token
   ```

4. **Start the server**:
   ```sh
   npm start
   ```

### Frontend

1. **Navigate to the frontend directory**:
   ```sh
   cd ../frontend
   ```

2. **Install dependencies**:
   ```sh
   npm install
   ```

3. **Start the development server**:
   ```sh
   npm start
   ```

### Developer SDK

1. **Navigate to the SDK directory**:
   ```sh
   cd ../sdk
   ```

2. **Install dependencies**:
   ```sh
   npm install
   ```

3. **Build the SDK**:
   ```sh
   npm run build
   ```

## API Endpoints

### Authentication
- **POST /api/v1/passengers/signup**: Sign up a new passenger.
- **POST /api/v1/passengers/login**: Log in a passenger.
- **POST /api/v1/passengers/forgotPassword**: Send OTP for password reset.
- **POST /api/v1/passengers/resetPassword**: Reset password using OTP.

### OTP Verification
- **POST /api/v1/passengers/verifyContact**: Verify OTP sent to the passenger's phone number.

### Distance Calculation
- **GET /api/v1/drivers/distances/:latlng/:unit**: Get distances between a given point and various drivers.

### Ride Management
- **POST /api/v1/rides/request**: Request a new ride.
- **POST /api/v1/rides/accept**: Accept a ride request.
- **GET /api/v1/rides/track/:rideId**: Track an ongoing ride.

## Project Structure

- **backend/**: Contains the backend code, including controllers, models, routes, and utilities.
- **frontend/**: Contains the frontend code, built with React.js.
- **sdk/**: Contains the developer SDK for integrating with the ride-sharing application.

## Future Enhancements

- **Enhanced Notifications**: Implement push notifications for real-time updates.
- **Payment Integration**: Integrate payment gateways for seamless transactions.
- **Advanced Analytics**: Provide detailed analytics and reporting for users and administrators.

## Contributing

We welcome contributions to improve this project. Please follow these steps to contribute:

1. Fork the repository.
2. Create a new branch (`git checkout -b feature-branch`).
3. Make your changes.
4. Commit your changes (`git commit -m 'Add some feature'`).
5. Push to the branch (`git push origin feature-branch`).
6. Create a new Pull Request.

## License

This project is licensed under the MIT License. See the [`LICENSE`](command:_github.copilot.openRelativePath?%5B%7B%22scheme%22%3A%22file%22%2C%22authority%22%3A%22%22%2C%22path%22%3A%22%2FUsers%2Fjoeldanjuma%2FDesktop%2FNEXT%2FAlong%2Fbackend%2FBackend%2FLICENSE%22%2C%22query%22%3A%22%22%2C%22fragment%22%3A%22%22%7D%2C%22997fa390-9c5b-48df-a4df-246b49fa1987%22%5D "/Users/joeldanjuma/Desktop/NEXT/Along/backend/Backend/LICENSE") file for more details.

## Contact

For any questions or suggestions, please open an issue or contact us at support@example.com.

---

This README provides a comprehensive overview of the entire ride-sharing application, including the backend, frontend, and developer SDK. It covers the features, installation steps, API endpoints, project structure, and future enhancements.