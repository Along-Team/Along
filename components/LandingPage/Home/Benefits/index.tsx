import { exp, benefits } from "./data";
import SpanWrapper from "@/components/LandingPage/SpanWrapper";
import Image from "next/image";
import NotificationPanel from "./NotificationPanel";
import Button from "@/components/Button";
import ImageLibrary from "@/components/shared/ImageLibrary";

const Benefits: React.FC = () => {
  return (
    <div className="p-10 md:p-20 lg:p-24">
      <div className="text-center mb-10 md:mb-16">
        <SpanWrapper text="BENEFITS" />
        <h1 className="text-3xl md:text-4xl lg:text-5xl mt-4 md:w-2/3 mx-auto">
          Along offers a seamless and{" "}
          <span className="svg_circle">efficient</span> public transportation
          experience.
        </h1>
      </div>

      <div className="flex flex-col md:flex-row mb-10 md:mb-20 justify-between items-center">
        <div
          style={{ backgroundImage: "url('/images/benefit_bg.svg')" }}
          className="bg-center bg-cover bg-no-repeat ml-10 min-w-60 my-10 md:mt-20 md:min-w-80  md:ml-12 md:order-last basis-1/2 relative"
        >
          <Image
            src={ImageLibrary.TwoIphones}
            height={600}
            width={600}
            alt="iphone 15"
            className="z-10 relative"
          />
          <NotificationPanel />
        </div>

        <div className="flex flex-col gap-4 basis-1/2">
          {benefits.map((benefit) => (
            <div key={benefit.src} className="flex space-x-6 items-start">
              <Image
                src={benefit.src}
                height={48}
                width={48}
                alt={benefit.src}
              />
              <div className="">
                <h3 className="text-lg lg:text-xl font-semibold mb-1">
                  {benefit.title}
                </h3>
                <p className="text-darkGray">{benefit.text}</p>
              </div>
            </div>
          ))}

          <div className="my-6 md:mt-8">
            <Button label="Get started" classNames="rounded-3xl md:w-auto" />
          </div>
        </div>
      </div>

      <div className="grid gap-6 md:grid-cols-2 lg:grid-cols-4">
        {exp.map((e) => (
          <div
            key={e.src}
            className="bg-customAlabaster rounded-3xl p-6 md:p-8"
          >
            <div className="w-[100px] ">
              <img alt={e.src} src={e.src} />
            </div>
            <h3 className="text-lg lg:text-xl font-bold mt-12 mb-2">
              {e.title}
            </h3>
            <p className="text-darkGray">{e.text}</p>
          </div>
        ))}
      </div>
    </div>
  );
};

export default Benefits;
