"use client";

import Button from "@/components/Button";
import ScreenWrapper from "../ScreenWrapper";
import Image from "next/image";
import ImageLibrary from "@/components/shared/ImageLibrary";
import { usePathname, useRouter } from "next/navigation";

// TODO: dynamically navigate to the planner of the base route, driver or rider
const GettingStarted = () => {
  const pathname = usePathname();
  const router = useRouter();

  const handleClick = () => {
    let basePathname = pathname.split("/")[1];
    router.push(`/${basePathname}/planner`);
  };

  return (
    <ScreenWrapper>
      <div className="max-w-[430px] mx-auto flex-1 flex flex-col justify-center px-8">
        <div className="sm:mb-10 text-center flex-1 sm:flex-none flex flex-col justify-center">
          <div className="mx-auto w-16 h-16 mb-4">
            <Image
              src={ImageLibrary.AppLogo}
              height={70}
              width={70}
              alt="Along Logo"
              className="w-full h-full"
            />
          </div>
          <h1 className="text-5xl font-bold mb-4">Welcome</h1>
          <p className="text-dark text-sm md:text-base">
            We are now with you all the way, regardless of where you are going
          </p>
        </div>
        <div className="w-[214px] sm:w-56 mx-auto">
          <Button onClick={handleClick} label="Continue" />
        </div>
      </div>
    </ScreenWrapper>
  );
};

export default GettingStarted;
