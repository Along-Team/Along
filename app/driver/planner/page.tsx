"use client";

import ArrivalConfirmationScreen from "@/components/Planner/ArrivalConfirmationScreen";
import JourneySetup from "@/components/Planner/JourneySetup";
import { useState } from "react";
import dynamic from "next/dynamic";
import DropOff from "@/components/Planner/DropOff";
import ToDestination from "@/components/Planner/ToDestination";
import TicketInformation from "@/components/Planner/TicketInformation";
import DriverWallet from "@/components/Planner/DriverWallet";
const MapBoxMap = dynamic(() => import("@/components/Planner/MapBoxMap"), {
  ssr: false,
});

export default function PlannerPage() {
  const [openJourneySetup, setOpenJourneySetup] = useState(true);
  const [viewToDestination, setViewToDestination] = useState(false);
  const [openDropOff, setOpenDropOff] = useState(false);
  const [openTicketInfo, setOpenTicketInfo] = useState(false);
  const [openTripSummary, setOpenTripSummary] = useState(false);
  const [openWallet, setOpenWallet] = useState(false);
  const [showMap, setShowMap] = useState(true);

  const setRoute = () => {
    setOpenJourneySetup(false);
    setOpenDropOff(true);
    setViewToDestination(true);
  };

  const clickToOpenTicketInfo = () => {
    setOpenDropOff(false);
    setOpenTicketInfo(true);
  };

  const goBackToDropOff = () => {
    setOpenDropOff(true);
    setOpenTicketInfo(false);
  };

  const viewTripSummary = () => {
    setOpenTripSummary(true);
    setShowMap(false);
    setOpenTicketInfo(false);
    setOpenDropOff(false);
    setViewToDestination(false);
  };

  const viewWalletScreen = () => {
    setOpenTripSummary(false);
    setOpenWallet(true);
  };

  return (
    <div
      className={`${
        openWallet ? "pt-0" : "pt-14"
      } pb-20 h-screen w-screen overflow-hidden flex flex-col bg-gray-50 ${
        openTripSummary ? "justify-center" : ""
      }`}
    >
      <JourneySetup open={openJourneySetup} setRoute={setRoute} forDriver />

      {viewToDestination && (
        <div className="bg-white text-onyx pt-7 pb-8 px-4 w-full">
          <ToDestination forDriver />
        </div>
      )}

      <DropOff
        open={openDropOff && !openTripSummary}
        handleClick={clickToOpenTicketInfo}
      />
      <TicketInformation
        open={openTicketInfo && !openTripSummary}
        goBack={goBackToDropOff}
        handleClick={viewTripSummary}
      />
      <MapBoxMap open={showMap} />

      <ArrivalConfirmationScreen
        handleClick={viewWalletScreen}
        open={openTripSummary}
        forDriver
      />

      <DriverWallet open={openWallet} />
    </div>
  );
}
