import { ERROR_OCCURED_MESSAGE } from "@/utils/constants";
import { AxiosError } from "axios";


export const handleAxiosError = (error: any): never => {
  if (error instanceof AxiosError) {
    const errorMessage =
      error.response?.data.message ||
      error.response?.data.detail ||
      error.response?.data.error ||
      ERROR_OCCURED_MESSAGE;
    throw new Error(errorMessage);
  }
  throw error;
};
