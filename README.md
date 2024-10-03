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