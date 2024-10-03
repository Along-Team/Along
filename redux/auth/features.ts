import api from "@/utils/axios/api";
import { setUserTokenCookie } from "@/utils/helpers/auth/cookieUtility";
import { handleAxiosError } from "@/utils/helpers/general/errorHandler";
import { createAsyncThunk } from "@reduxjs/toolkit";

import { RiderSignUpPayload, RiderSignUpResponse } from "./interface";


// Async thunk for rider signup
export const riderSignUp = createAsyncThunk<
    RiderSignUpResponse,
    RiderSignUpPayload,
    { rejectValue: string }
>(
    "auth/riderSignUp",
    async (payload: RiderSignUpPayload, { rejectWithValue }) => {
        try {
            console.log("Rider signup initiated with payload:", payload);

            // Make the API request to /passengers/signup endpoint
            const response = await api.post<RiderSignUpResponse>("/passengers/signup", payload);

            console.log("Signup successful:", response.data);

            // Set user token cookie
            if (response.data.data?.token) {
                setUserTokenCookie(response.data.data.token);
                console.log("User token cookie set:", response.data.data.token);
            }

            return response.data;
        } catch (error) {
            console.error("Signup failed:", error);
            return rejectWithValue(handleAxiosError(error));
        }
    }
);