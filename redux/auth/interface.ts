export interface RiderSignUpPayload {
  userName?: string;
  contact?: string;
  password?: string;
  photo?: string;
  cardNumber?: string;
  cvv?: string;
  expDate?: string;

}

export interface RiderFormState {
  userName?: string;
  contact?: string;
  password?: string;
  photo?: string;
  cardNumber?: string;
  cvv?: string;
  expDate?: string;
}

export interface DriverFormState {
  userName?: string;
  contact?: string;
  password?: string;
  photo?: string;
  cardNumber?: string;
  cvv?: string;
  expDate?: string;
  email?: string;
}

export interface RiderSignUpResponse {
  success: boolean;
  message: string;
  data?: {
    id?: string;
    userName?: string;
    contact?: string;
    token?: string;
    email?: string;
  };
}
