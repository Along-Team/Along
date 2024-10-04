// const Base = require("../base");

const resource = "/passengers";

// export class Passenger extends Base {
//   signToken(): Promise<any> {
//     return this.invoke(`${resource}/signToken`);
//   }
//   createSendToken(): Promise<any> {
//     return this.invoke(`${resource}/createSendToken`);
//   }
//   signUp(): Promise<any> {
//     return this.invoke(`${resource}/signUp`);
//   }
//   verifyContact(): Promise<any> {
//     return this.invoke(`${resource}/verifyContact`);
//   }
//   login(): Promise<any> {
//     return this.invoke(`${resource}/login`);
//   }
//   protect(): Promise<any> {
//     return this.invoke(`${resource}/protect`);
//   }
//   forgotPassword(): Promise<any> {
//     return this.invoke(`${resource}/forgotPassword`);
//   }
//   resetPassword(): Promise<any> {
//     return this.invoke(`${resource}/resetPassword`);
//   }
//   updatePassenger(): Promise<any> {
//     return this.invoke(`${resource}/updatePassenger`);
//   }
// }

export class Passengers {
  async signUp(passengerDetails: {
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
  }): Promise<any> {
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
        `http://localhost:3000/passengers/signUp?email=${passengerDetails.email}`,
        {
          method: "POST",
          body: JSON.stringify(passengerDetails),
          headers: { "Content-Type": "application/json" },
        }
      ).then((res) => res.json());
      if (!passenger) {
        return new Promise((reject) => {
          reject("Create Passender failed");
        });
      } else {
        return new Promise((resolve) => {
          resolve(passenger);
        });
      }
    }
  }
}
