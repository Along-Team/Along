import {
  ForgotPassengerPasswordDetailsParams,
  LoginPassengerDetailsParams,
  ProtectPassengerDetailsParams,
  ResetPassengerPasswordDetailsParams,
  SignUpDetailsParams,
  VerifyPassengerContactDetailsParams,
} from "../types";

export async function signUp(
  passengerDetails: SignUpDetailsParams
): Promise<any> {
  if (
    !passengerDetails.username ||
    !passengerDetails.email ||
    !passengerDetails.password ||
    !passengerDetails.passwordConfirm ||
    !passengerDetails.contact ||
    !passengerDetails.photo ||
    !passengerDetails.cardNumber ||
    !passengerDetails.cvv ||
    !passengerDetails.expiryDate ||
    !passengerDetails.active ||
    !passengerDetails.role
  ) {
    return new Promise((reject) => {
      reject("Invalid passenger details");
    });
  } else {
    const passenger = await fetch(
      `https://project-along.onrender.com/passengers/signUp`,
      {
        method: "POST",
        body: JSON.stringify(passengerDetails),
        headers: { "Content-Type": "application/json" },
      }
    ).then((res) => res.json());
    if (!passenger) {
      return new Promise((reject) => {
        reject("Create Passenger failed");
      });
    } else {
      return new Promise((resolve) => {
        resolve(passenger);
      });
    }
  }
}

export async function verifyPassengerContact(
  passengerDetails: VerifyPassengerContactDetailsParams
): Promise<any> {
  if (!passengerDetails.contact || !passengerDetails.otp) {
    return new Promise((reject) => {
      reject("Invalid passenger details");
    });
  } else {
    const passengerToken = await fetch(
      `https://project-along.onrender.com/passengers/verifyContact`,
      {
        method: "POST",
        body: JSON.stringify(passengerDetails),
        headers: { "Content-Type": "application/json" },
      }
    ).then((res) => res.json());
    if (!passengerToken) {
      return new Promise((reject) => {
        reject("Verify Passenger failed");
      });
    } else {
      return new Promise((resolve) => {
        resolve(passengerToken);
      });
    }
  }
}

export async function loginPassenger(
  passengerDetails: LoginPassengerDetailsParams
): Promise<any> {
  if (!passengerDetails.username || !passengerDetails.password) {
    return new Promise((reject) => {
      reject("Invalid passenger details");
    });
  } else {
    const passengerToken = await fetch(
      `https://project-along.onrender.com/passengers/login`,
      {
        method: "POST",
        body: JSON.stringify(passengerDetails),
        headers: { "Content-Type": "application/json" },
      }
    ).then((res) => res.json());
    if (!passengerToken) {
      return new Promise((reject) => {
        reject("Login Passenger failed");
      });
    } else {
      return new Promise((resolve) => {
        resolve(passengerToken);
      });
    }
  }
}

export async function protectPassenger(
  passengerDetails: ProtectPassengerDetailsParams
): Promise<any> {
  if (!passengerDetails.token) {
    return new Promise((reject) => {
      reject("Invalid passenger details");
    });
  } else {
    const passenger = await fetch(
      `https://project-along.onrender.com/passengers/protect`,
      {
        method: "POST",
        body: JSON.stringify(passengerDetails),
        headers: { "Content-Type": "application/json" },
      }
    ).then((res) => res.json());
    if (!passenger) {
      return new Promise((reject) => {
        reject("Protect Passenger failed");
      });
    } else {
      return new Promise((resolve) => {
        resolve(passenger);
      });
    }
  }
}

export async function forgotPassengerPassword(
  passengerDetails: ForgotPassengerPasswordDetailsParams
): Promise<any> {
  if (!passengerDetails.contact) {
    return new Promise((reject) => {
      reject("Invalid passenger details");
    });
  } else {
    const passenger = await fetch(
      `https://project-along.onrender.com/passengers/forgotPassword`,
      {
        method: "POST",
        body: JSON.stringify(passengerDetails),
        headers: { "Content-Type": "application/json" },
      }
    ).then((res) => res.json());
    if (!passenger) {
      return new Promise((reject) => {
        reject("Forgot Passenger failed");
      });
    } else {
      return new Promise((resolve) => {
        resolve(passenger);
      });
    }
  }
}

export async function resetPassengerPassword(
  passengerDetails: ResetPassengerPasswordDetailsParams
): Promise<any> {
  if (!passengerDetails.contact) {
    return new Promise((reject) => {
      reject("Invalid passenger details");
    });
  } else {
    const passenger = await fetch(
      `https://project-along.onrender.com/passengers/forgotPassword`,
      {
        method: "POST",
        body: JSON.stringify(passengerDetails),
        headers: { "Content-Type": "application/json" },
      }
    ).then((res) => res.json());
    if (!passenger) {
      return new Promise((reject) => {
        reject("Forgot Passenger failed");
      });
    } else {
      return new Promise((resolve) => {
        resolve(passenger);
      });
    }
  }
}

// export class Passengers {

// }
