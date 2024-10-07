import { createSlice, PayloadAction } from "@reduxjs/toolkit";
import { riderSignUp } from "../features";
import { RiderFormState, RiderSignUpResponse } from "../interface";

// Define initial state for the form
const initialFormState: RiderFormState = {
    userName: "",
    contact: "",
    password: "",
    // photo: "",
    cardNumber: "",
    cvv: "",
    expDate: "",
};

// Create slice to manage form data
const formSlice = createSlice({
    name: "form",
    initialState: initialFormState,
    reducers: {
        // Action to update form data as user fills the steps
        updateFormData: (state, action: PayloadAction<Partial<RiderFormState>>) => {
            return { ...state, ...action.payload };
        },
        // Action to reset form data after submission
        resetFormData: () => initialFormState,
    },
    extraReducers: (builder) => {
        // handle additional states here like for riderSignUp, if needed
    },
});

export const { updateFormData, resetFormData } = formSlice.actions;
export const formReducer = formSlice.reducer;
