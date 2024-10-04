import {
  CreateDriverDetailsParams,
  ForgotDriverPasswordParams,
  GetDriverParams,
  LoginDriverParams,
  ResetDriverPasswordParams,
  SignUpDriverParams,
  SignUpDriverWithEmailParams,
  UpdateVehicleDetailsByIdParams,
  VerifyDriverSignUpParams,
  VerifyDriverSignUpWithEmailParams,
} from "../types";

export class Drivers {
  async loginDriver(driverDetails: LoginDriverParams): Promise<any> {
    if (!driverDetails.username || driverDetails.password) {
      return new Promise((reject) => {
        reject("Invalid driver details");
      });
    } else {
      const driver = await fetch(
        "https://project-along.onrender.com/v1/drivers/login",
        {
          method: "POST",
          body: JSON.stringify(driverDetails),
          headers: {
            "Content-Type": "application/json",
          },
        }
      ).then((res) => res.json());
      return new Promise((resolve) => {
        resolve({
          status: "success",
          data: {
            data: driver,
          },
        });
      });
    }
  }

  async signUpDriver(driverDetails: SignUpDriverParams): Promise<any> {
    if (
      !driverDetails.userName ||
      driverDetails.password ||
      driverDetails.email ||
      driverDetails.contact ||
      driverDetails.photo
    ) {
      return new Promise((reject) => {
        reject("Invalid driver details");
      });
    } else {
      const driver = await fetch(
        "https://project-along.onrender.com/v1/drivers/signup",
        {
          method: "POST",
          body: JSON.stringify(driverDetails),
          headers: {
            "Content-Type": "application/json",
          },
        }
      ).then((res) => res.json());
      return new Promise((resolve) => {
        resolve({
          status: "success",
          data: {
            data: driver,
          },
        });
      });
    }
  }
  async signUpDriverWithEmaiil(
    driverDetails: SignUpDriverWithEmailParams
  ): Promise<any> {
    if (
      !driverDetails.userName ||
      driverDetails.password ||
      driverDetails.email ||
      driverDetails.contact ||
      driverDetails.photo
    ) {
      return new Promise((reject) => {
        reject("Invalid driver details");
      });
    } else {
      const driver = await fetch(
        "https://project-along.onrender.com/v1/drivers/signupwithemail",
        {
          method: "POST",
          body: JSON.stringify(driverDetails),
          headers: {
            "Content-Type": "application/json",
          },
        }
      ).then((res) => res.json());
      return new Promise((resolve) => {
        resolve({
          status: "success",
          data: {
            data: driver,
          },
        });
      });
    }
  }

  async verifyDriverSignUp(
    driverDetails: VerifyDriverSignUpParams
  ): Promise<any> {
    if (!driverDetails.contact || driverDetails.otp) {
      return new Promise((reject) => {
        reject("Invalid driver details");
      });
    } else {
      const driver = await fetch(
        "https://project-along.onrender.com/v1/drivers/verifysignup",
        {
          method: "POST",
          body: JSON.stringify(driverDetails),
          headers: {
            "Content-Type": "application/json",
          },
        }
      ).then((res) => res.json());
      return new Promise((resolve) => {
        resolve({
          status: "success",
          data: {
            data: driver,
          },
        });
      });
    }
  }

  async verifyDriverSignUpWithEmail(
    driverDetails: VerifyDriverSignUpWithEmailParams
  ): Promise<any> {
    if (!driverDetails.token) {
      return new Promise((reject) => {
        reject("Invalid driver details");
      });
    } else {
      const driver = await fetch(
        "https://project-along.onrender.com/v1/drivers/verifysignupwithemail",
        {
          method: "POST",
          body: JSON.stringify(driverDetails),
          headers: {
            "Content-Type": "application/json",
          },
        }
      ).then((res) => res.json());
      return new Promise((resolve) => {
        resolve({
          status: "success",
          data: {
            data: driver,
          },
        });
      });
    }
  }

  async forgotDriverPassword(
    driverDetails: ForgotDriverPasswordParams
  ): Promise<any> {
    if (!driverDetails.contact) {
      return new Promise((reject) => {
        reject("Invalid driver details");
      });
    } else {
      const driver = await fetch(
        "https://project-along.onrender.com/v1/drivers/forgotpassword",
        {
          method: "POST",
          body: JSON.stringify(driverDetails),
          headers: {
            "Content-Type": "application/json",
          },
        }
      ).then((res) => res.json());
      return new Promise((resolve) => {
        resolve({
          status: "success",
          data: {
            data: driver,
          },
        });
      });
    }
  }

  async resetDriverPassword(
    driverDetails: ResetDriverPasswordParams
  ): Promise<any> {
    if (!driverDetails.contact || driverDetails.password || driverDetails.otp) {
      return new Promise((reject) => {
        reject("Invalid driver details");
      });
    } else {
      const driver = await fetch(
        "https://project-along.onrender.com/v1/drivers/resetpassword",
        {
          method: "POST",
          body: JSON.stringify(driverDetails),
          headers: {
            "Content-Type": "application/json",
          },
        }
      ).then((res) => res.json());
      return new Promise((resolve) => {
        resolve({
          status: "success",
          data: {
            data: driver,
          },
        });
      });
    }
  }

  async updateVehicleDetailsById(
    driverDetails: UpdateVehicleDetailsByIdParams
  ): Promise<any> {
    if (!driverDetails.Id) {
      return new Promise((reject) => {
        reject("Invalid driver details");
      });
    } else {
      const driver = await fetch(
        `https://project-along.onrender.com/v1/drivers"}`,
        {
          method: "PATCH",
          body: JSON.stringify(driverDetails),
          headers: {
            "Content-Type": "application/json",
          },
        }
      ).then((res) => res.json());
      return new Promise((resolve) => {
        resolve({
          status: "success",
          data: {
            data: driver,
          },
        });
      });
    }
  }

  async getDriver(driverDetails: GetDriverParams): Promise<any> {
    if (
      !driverDetails.name ||
      driverDetails.licenseNumber ||
      driverDetails.licencePhoto ||
      driverDetails.expiryDate
    ) {
      return new Promise((reject) => {
        reject("Invalid driver details");
      });
    } else {
      // const driver = await Driver.findOne({
      //   licenseNumber: driverDetails.licenseNumber,
      // });
      const driver = await fetch(
        `https://project-along.onrender.com/v1/drivers/${driverDetails.licenseNumber}`
      ).then((res) => res.json());
      if (!driver) {
        return new Promise((reject) => {
          reject("Driver not found");
        });
      } else {
        return new Promise((resolve) => {
          resolve(driver);
        });
      }
    }
  }

  async createDriverDetails(
    driverDetails: CreateDriverDetailsParams
  ): Promise<any> {
    if (
      !driverDetails.name ||
      driverDetails.licenseNumber ||
      driverDetails.licencePhoto ||
      driverDetails.expiryDate
    ) {
      return new Promise((reject) => {
        reject("Invalid driver details");
      });
    } else {
      const driver = await fetch(
        "https://project-along.onrender.com/v1/drivers",
        {
          method: "POST",
          body: JSON.stringify(driverDetails),
          headers: {
            "Content-Type": "application/json",
          },
        }
      ).then((res) => res.json());
      return new Promise((resolve) => {
        resolve({
          status: "success",
          data: {
            data: driver,
          },
        });
      });
    }
  }

  async getDriversWithin(
    passengerLocation: {
      latitude: number;
      longitude: number;
    },
    distance: string
  ): Promise<any> {
    if (!passengerLocation.latitude || passengerLocation.longitude) {
      return new Promise((reject) => {
        reject("Please provide latitude and longitude in the format lat, lng");
      });
    } else {
      const drivers = await fetch(
        `https://project-along.onrender.com/v1/drivers?latitude=${passengerLocation.latitude}&longitude=${passengerLocation.longitude}&distance=${distance}`,
        {
          method: "GET",
          body: JSON.stringify(passengerLocation),
          headers: {
            "Content-Type": "application/json",
          },
        }
      ).then((res) => res.json());
      if (drivers.length === 0) {
        return new Promise((reject) => {
          reject("No drivers within location");
        });
      } else {
        return new Promise((resolve) => {
          resolve({
            status: "success",
            results: drivers.length,
            data: {
              data: drivers,
            },
          });
        });
      }
    }
  }
}
