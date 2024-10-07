"use client";

import Image from "next/image";
import { usePathname } from "next/navigation";
import ImageLibrary from "@/components/shared/ImageLibrary";
import Button from "@/components/Button";
import ScreenWrapper from "../ScreenWrapper";
import React from "react";

interface IProps {
  isDriverComp?: boolean;
}

const Welcome: React.FC<IProps> = ({ isDriverComp }) => {
  const pathname = usePathname();

  return (
    <ScreenWrapper>
      <div className="flex flex-col h-full">
        <div className="hidden sm:block mb-8">
          <div className="sm:h-[40px] sm:w-[200px] md:h-[50px] md:w-[250px]">
            <Image
              src={ImageLibrary.AppLogoWithText}
              height={80}
              width={200}
              alt="Along Logo"
              className="w-full h-full"
            />
          </div>
        </div>
        <div className="sm:max-w-lg md:max-w-xl sm:mx-auto flex-1 flex flex-col items-center justify-end sm:justify-center">
          <div className="sm:bg-white sm:shadow-md sm:shadow-[#0000000D] sm:bg-opacity-20 sm:rounded-3xl sm:pt-20 sm:pb-10 sm:px-14  md:pt-24 md:pb-14 md:px-[74px]">
            <div className="sm:hidden h-[40px] w-[170px] mb-7">
              <Image
                src={ImageLibrary.AppLogoWithText}
                height={36}
                width={200}
                className="w-full h-full"
                alt="Along Logo"
              />
            </div>

            {!isDriverComp ? (
              <div>
                <h1 className="text-5xl font-bold mb-4">Plan your next trip</h1>
                <p className="text-dark text-sm md:text-base">
                  Hop On Board the Future of Public Transit - Your Smart Ride
                  Starts Here
                </p>
              </div>
            ) : (
              <div>
                <h1 className="text-5xl font-bold mb-4">
                  Optimize Your Next Route
                </h1>
                <p className="text-dark text-sm md:text-base">Along Driver</p>
              </div>
            )}

            <div className="mt-12 sm:mt-16 md:mt-24">
              <Button link={`${pathname}/sign-in`} label="Log in" />

              <Button
                link={`${pathname}/sign-up`}
                label="Create Account"
                classNames="mt-4 bg-primary text-midnight"
              />
              <Button
                link={`${pathname}/welcome`}
                label="Continue Without Account"
                classNames="mt-3 bg-transparent text-midnight"
              />
            </div>
          </div>
        </div>
      </div>
    </ScreenWrapper>
  );
};

export default Welcome;
