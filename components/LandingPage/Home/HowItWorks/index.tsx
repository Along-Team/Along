import Image from "next/image";
import data from "./data";
import Button from "@/components/Button";
import SpanWrapper from "../../SpanWrapper";
import ImageLibrary from "@/components/shared/ImageLibrary";

const HowItWorks: React.FC = () => {
  return (
    <div
      style={{ backgroundImage: "url('/images/half_circle_design.svg')" }}
      className="bg-left bg-contain bg-no-repeat p-10 md:p-20 lg:p-24"
    >
      <div className="text-center">
        <SpanWrapper text="HOW DOES IT WORK" />
        <h1 className="text-3xl md:text-4xl lg:text-5xl mb-10 md:mb-16 mt-4 md:w-2/3 mx-auto">
          Experience a seamless journey with Along&apos;s
          <span className="svg_underline"> simple steps</span>.
        </h1>
      </div>
      <div className="flex flex-col md:flex-row space-y-10 md:space-y-0 md:space-x-10">
        <div className="grid grid-cols-2 gap-4">
          <div className="flex flex-col space-y-4">
            <div className="p-4 bg-opacity-35 bg-white rounded-xl">
              <Image
                src={ImageLibrary.SearchLocation}
                width={300}
                height={100}
                alt="Search menu location"
              />

              <div className="flex mt-2 space-x-2 items-center">
                <Image
                  src={ImageLibrary.ClockIcon}
                  width={16}
                  height={16}
                  alt="clock icon"
                />
                <span className="text-[6px] font-semibold text-dark">
                  Recent Trips
                </span>
              </div>
              <Image
                src={ImageLibrary.RideHistory}
                width={300}
                height={42}
                alt="Recent Trip to wuse zone 3"
                className="-mt-5 sm:-mt-12 md:-mt-4 lg:-mt-8 xl:-mt-10"
              />
            </div>

            <div className="bg-opacity-35 bg-white rounded-xl">
              <Image
                src={ImageLibrary.AvailableCabs}
                width={300}
                height={92}
                alt="available bus routes"
                className="mx-auto"
              />
            </div>
          </div>

          <Image
            src={ImageLibrary.MapNavigation}
            width={300}
            height={404}
            alt="nav window"
            className="basis-1/2"
          />
        </div>

        <div className="flex flex-col">
          {data.map((step, index) => (
            <div key={index} className="flex items-center mb-4 space-x-4">
              <div className="bg-primary min-h-12 min-w-12 flex justify-center items-center h-12 w-12 rounded-full">
                <h4 className="md:text-lg font-semibold">{index + 1}</h4>
              </div>
              <h4 className="text-gunmetal font-semibold md:text-lg">
                {step.title}: {step.text}
              </h4>
            </div>
          ))}
          <div className="">
            <Button
              label="Get Started"
              classNames="mt-10 md:w-auto rounded-3xl"
            />
          </div>
        </div>
      </div>
    </div>
  );
};

export default HowItWorks;
