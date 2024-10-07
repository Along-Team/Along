"use client";

import ArrivalConfirmationScreen from "@/components/Planner/ArrivalConfirmationScreen";
import BookingDetails from "@/components/Planner/BookingDetails";
import JourneySetup from "@/components/Planner/JourneySetup";
import TripDetails from "@/components/Planner/TripDetails";
import TripOptions from "@/components/Planner/TripOptions";
import { useAppSelector } from "@/redux/store";
import { useState } from "react";
import dynamic from "next/dynamic";
const MapBoxMap = dynamic(() => import("@/components/Planner/MapBoxMap"), {
  ssr: false,
});

export default function PlannerPage() {
  const [hasConfirmedRoute, setHasConfirmedRoute] = useState(false);
  const [openTripOptions, setOpenTripOptions] = useState(false);
  const [showMap, setShowMap] = useState(true);
  const [openBookingDetails, setOpenBookingDetails] = useState(false);
  const [openPickUpIndicator, setOpenPickUpIndicator] = useState(false);
  const [openReview, setOpenReview] = useState(false);

  const userCurrentAddress = useAppSelector((state) => state.currentAddress);
  const userDestinationAddress = useAppSelector(
    (state) => state.destinationAddress
  );

  const setRoute = () => {
    setHasConfirmedRoute(true);
    setOpenTripOptions(true);
    console.log(userCurrentAddress);
    console.log(userDestinationAddress);
  };

  const displayMap = () => {
    setShowMap(true);
  };

  const selectTrip = () => {
    setOpenBookingDetails(true);
    setShowMap(false);
    setOpenTripOptions(false);
  };

  const startTrip = () => {
    setOpenBookingDetails(false);
    setOpenPickUpIndicator(true);
    setShowMap(true);
  };

  const endTrip = () => {
    setOpenPickUpIndicator(false);
    setOpenReview(true);
    setShowMap(false);
  };

  return (
    <div
      className={`pt-14 pb-20 h-screen w-screen overflow-hidden flex flex-col bg-gray-50 ${
        openReview ? "justify-center" : ""
      }`}
    >
      <JourneySetup
        open={!openPickUpIndicator && !openReview}
        setRoute={setRoute}
        hasConfirmedRoute={hasConfirmedRoute}
      />
      <TripDetails finishTrip={endTrip} open={openPickUpIndicator} />
      <MapBoxMap open={showMap} />

      <ArrivalConfirmationScreen
        handleClick={() => {
          return;
        }}
        open={openReview}
      />
      <BookingDetails open={openBookingDetails} handleClick={startTrip} />
      <TripOptions open={openTripOptions} handleClick={selectTrip} />
    </div>
  );
}
