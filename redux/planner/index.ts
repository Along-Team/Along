import { createSlice, PayloadAction } from "@reduxjs/toolkit";
import { UserLocationState } from "./interface";

const initialState: UserLocationState = {
  coordinates: {
    latitude: 0,
    longitude: 0,
  },
  mapbox_id: "",
  full_address: "",
  name: "",
  place_formatted: "",
};

const currentLocationSlice = createSlice({
  name: "currentUserLocation",
  initialState,
  reducers: {
    fetchUserLocation: (state, action: PayloadAction<UserLocationState>) => {
      return { ...state, ...action.payload };
    },

    resetUserLocation: () => initialState,
  },
});

const destinationSlice = createSlice({
  name: "userDestination",
  initialState,
  reducers: {
    fetchUserDestination: (state, action: PayloadAction<UserLocationState>) => {
      return { ...state, ...action.payload };
    },

    resetUserDestination: () => initialState,
  },
});

export const { fetchUserLocation, resetUserLocation } =
  currentLocationSlice.actions;
export const { fetchUserDestination, resetUserDestination } =
  destinationSlice.actions;

export const currentLocationReducer = currentLocationSlice.reducer;
export const userDestinationReducer = destinationSlice.reducer;
