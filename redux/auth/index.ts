import { createSlice } from "@reduxjs/toolkit";
import { riderSignUp } from "./features";
import { RiderSignUpResponse } from "./interface";

// Define the initial state for authentication
interface AuthState {
    user: RiderSignUpResponse["data"] | null;
    loading: boolean;
    error: string | null;
}

const initialState: AuthState = {
    user: null,
    loading: false,
    error: null,
};

// Create the slice to manage authentication state
const authSlice = createSlice({
    name: "auth",
    initialState,
    reducers: {
        // Optional: Add any synchronous reducers (if needed)
    },
    extraReducers: (builder) => {
        builder
            .addCase(riderSignUp.pending, (state) => {
                state.loading = true;
                state.error = null;
                console.log("Signup request is pending...");
            })
            .addCase(riderSignUp.fulfilled, (state, action) => {
                state.loading = false;
                state.user = action.payload.data || null;
                state.error = null;
                console.log("Signup succeeded, user data:", state.user);
            })
            .addCase(riderSignUp.rejected, (state, action) => {
                state.loading = false;
                state.error = action.payload || "Failed to sign up";
                console.error("Signup rejected, error:", state.error);
            });
    },
});

// Export the actions and reducers
export const AuthSlice = authSlice;
export const { actions: authActions, reducer: authReducer } = authSlice;
