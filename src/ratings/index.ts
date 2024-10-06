import { GetRatingParams } from "../types";
import { CreateRatingParams } from "../types";

export async function getRating(Rating: GetRatingParams): Promise<any> {
  if (!Rating.review || Rating.rating || Rating.driver || Rating.passenger) {
    return new Promise((reject) => {
      reject("Invalid rating details");
    });
  } else {
    const rating = await fetch("https://project-along.onrender.com/v1/rating", {
      method: "GET",
      body: JSON.stringify(Rating),
      headers: {
        "Content-Type": "application/json",
      },
    }).then((res) => res.json());
    return new Promise((resolve) => {
      resolve({
        status: "success",
        data: {
          data: rating,
        },
      });
    });
  }
}

export async function createRating(Rating: CreateRatingParams): Promise<any> {
  if (!Rating.driver || Rating.passenger) {
    return new Promise((reject) => {
      reject("Invalid rating details");
    });
  } else {
    const rating = await fetch("https://project-along.onrender.com/v1/rating", {
      method: "POST",
      body: JSON.stringify(Rating),
      headers: {
        "Content-Type": "application/json",
      },
    }).then((res) => res.json());
    return new Promise((resolve) => {
      resolve({
        status: "success",
        data: {
          data: rating,
        },
      });
    });
  }
}
// export class Rating {

// }
