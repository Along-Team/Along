// export class Ride {}
import { GetRideParams } from "../types";

export async function getRide(Ride: GetRideParams): Promise<any> {
  if (!Ride.passengerId) {
    return new Promise((reject) => {
      reject("Invalid ride details");
    });
  } else {
    const ride = await fetch(
      "https://project-along.onrender.com/v1/rides/recentride/:passengerid",
      {
        method: "GET",
        body: JSON.stringify(Ride.passengerId),
        headers: {
          "Content-Type": "application/json",
        },
      }
    ).then((res) => res.json());
    return new Promise((resolve) => {
      resolve({
        status: "success",
        data: {
          data: ride,
        },
      });
    });
  }
}
