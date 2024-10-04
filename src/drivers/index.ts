const Base = require("../base");
const Driver = require("../../models/driverModel");

const resource = "/drivers";

// export class Driver extends Base {
//   getDriver(): Promise<any> {
//     return this.invoke(`${resource}/getDrivers`);
//   }
//   getDriversWithin(): Promise<any> {
//     return this.invoke(`${resource}/getDriversWithin`);
//   }
//   getDriversWithinRadius(): Promise<any> {
//     return this.invoke(`${resource}/getDriversWithinRadius`);
//   }
//   createDriverDetails(): Promise<any> {
//     return this.invoke(`${resource}/createDriverDetails`);
//   }
// }

export class Drivers {
  async getDriver(driverDetails: {
    name: string;
    licenseNumber: string;
    expiryDate: string;
    licencePhoto: string;
  }): Promise<any> {
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
        `http://localhost:3000/drivers/getDriver?licenseNumber=${driverDetails.licenseNumber}`
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

  async createDriverDetails(driverDetails: {
    name: string;
    licenseNumber: string;
    expiryDate: string;
    licencePhoto: string;
  }): Promise<any> {
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
      const driver = await fetch("https://project-along.onrender.com/v1", {
        method: "POST",
        body: JSON.stringify(driverDetails),
        headers: {
          "Content-Type": "application/json",
        },
      }).then((res) => res.json());
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
    location: {
      latitude: number;
      longitude: number;
    },
    distance: string
  ): Promise<any> {
    if (!location.latitude || location.longitude) {
      return new Promise((reject) => {
        reject("Please provide latitude and longitude in the format lat, lng");
      });
    } else {
      const drivers = await Driver.find({
        location: {
          $near: {
            $geometry: {
              type: "Point",
              coordinates: [location.latitude, location.longitude],
            },
            $maxDistance: distance,
          },
        },
      });
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

  async getDriversWithinRadius(
    distance: number,
    location: {
      latitude: number;
      longitude: number;
    },
    unit: string
  ): Promise<any> {
    const radius = unit === "mi" ? distance / 3963.2 : distance / 6378.1;
    if (!location.latitude || location.longitude) {
      return new Promise((reject) => {
        reject("Please provide latitude and longitude in the format lat, lng");
      });
    } else {
      const drivers = await Driver.find({
        locations: {
          $geoWithin: {
            $centerSphere: [[location.latitude, location.longitude], radius],
          },
        },
      });
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
