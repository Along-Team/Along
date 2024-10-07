"use client";

import ImageLibrary from "@/components/shared/ImageLibrary";
import Image from "next/image";
import React, { useState } from "react";
import dynamic from "next/dynamic";
import Button from "@/components/Button";

// Dynamically import RouteSelector to prevent SSR issues
const RouteSelector = dynamic(() => import("./RouteSelector"), {
  ssr: false, // Disable SSR
});

interface IProps {
  setRoute: () => void;
  hasConfirmedRoute?: boolean;
  open: boolean;
  forDriver?: boolean;
}

const JourneySetup: React.FC<IProps> = ({
  setRoute,
  hasConfirmedRoute,
  open,
  forDriver,
}) => {
  return (
    open && (
      <div className="bg-midnight text-white pt-7 pb-8 px-4 w-full">
        <div className="flex items-center justify-between mb-4">
          <div>
            <h2 className="text-xl font-bold">Get Me Somewhere</h2>
            <p className="text-xs opacity-50">Plan a journey on our web app</p>
          </div>
          <button className="bg-lightGray bg-opacity-10 px-3 py-2 rounded-xl flex items-center">
            <Image
              src={ImageLibrary.LocationPin}
              alt="Location icon"
              width={16}
              height={16}
            />
            <span>Abuja</span>
          </button>
        </div>
        <RouteSelector forDriver={forDriver} />

        {!forDriver ? (
          !hasConfirmedRoute && (
            <Button
              label="Confirmation"
              classNames="bg-primary mt-6"
              onClick={setRoute}
            />
          )
        ) : (
          <Button
            label="Start Trip"
            classNames="bg-white text-midnight mt-6"
            onClick={setRoute}
          />
        )}
      </div>
    )
  );
};

export default JourneySetup;
