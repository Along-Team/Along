import { configureStore } from "@reduxjs/toolkit";
import { TypedUseSelectorHook, useDispatch, useSelector } from "react-redux";

import { AuthSlice } from "./auth";
import { formReducer } from "./auth/form";
import { currentLocationReducer, userDestinationReducer } from "./planner";

// configure the store with all reducers
export const store = configureStore({
  reducer: {
    // all your slice reducers goes here
    auth: AuthSlice.reducer,
    form: formReducer,
    currentAddress: currentLocationReducer,
    destinationAddress: userDestinationReducer,
  },
});

// define RootState and AppDispatch types
export type RootState = ReturnType<typeof store.getState>;
export type AppDispatch = typeof store.dispatch;

export const useAppDispatch: () => AppDispatch = useDispatch;
export const useAppSelector: TypedUseSelectorHook<RootState> = useSelector;
