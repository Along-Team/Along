export type DriverSignUpResponse = { ok: boolean; error: string };

// export type Config = {
//   apiKey: string;
// };
export type getRideParams = {
  passengerId: string;
};

export type LoginDriverParams = {
  username: string;
  password: string;
};

export type SignUpDriverParams = {
  userName: string;
  password: string;
  email: string;
  contact: string;
  photo: string;
};

export type SignUpDriverWithEmailParams = {
  userName: string;
  password: string;
  email: string;
  contact: string;
  photo: string;
};

export type VerifyDriverSignUpParams = {
  contact: string;
  otp: string;
};

export type VerifyDriverSignUpWithEmailParams = {
  token: string;
};

export type ForgotDriverPasswordParams = {
  contact: string;
};

export type ResetDriverPasswordParams = {
  contact: string;
  password: string;
  otp: string;
};

export type UpdateVehicleDetailsByIdParams = {
  Id: string;
};

export type GetDriverParams = {
  name: string;
  licenseNumber: string;
  expiryDate: string;
  licencePhoto: string;
};

export type CreateDriverDetailsParams = {
  name: string;
  licenseNumber: string;
  expiryDate: string;
  licencePhoto: string;
};

export type GetDriversWithinParams = {
  location: {
    latitude: number;
    longitude: number;
  };
  distance: number;
};

export type GetRideParams = {
  passengerId: string;
};

export type GetRatingParams = {
  review: string;
  rating: number;
  driver: string;
  passenger: string;
};

export type CreateRatingParams = {
  driver: string;
  passenger: string;
};

export type GeneratePayQrInputParams = {
  amount: number;
  label: string;
  message: string;
  memo: string;
  merchant_wallet: string;
};

export type VerifyPaymentInputParams = {
  amount: number;
  reference: string;
  merchant_wallet: string;
};

export type SignUpDetailsParams = {
  username: string;
  email: string;
  password: string;
  passwordConfirm: string;
  contact: string;
  photo: string;
  cardNumber: string;
  cvv: string;
  expiryDate: string;
  active: boolean;
  role: string;
};

export type VerifyPassengerContactDetailsParams = {
  contact: string;
  otp: string;
};

export type LoginPassengerDetailsParams = {
  username: string;
  password: string;
};

export type ProtectPassengerDetailsParams = {
  token: string;
};

export type ForgotPassengerPasswordDetailsParams = {
  contact: string;
};

export type ResetPassengerPasswordDetailsParams = {
  contact: string;
  otp: string;
};
