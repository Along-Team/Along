import Image from "next/image";
import data from "./data";
import Button from "@/components/Button";
import ImageLibrary from "@/components/shared/ImageLibrary";

const Heading: React.FC = () => {
  return (
    <div className="px-10 mb-10 md:mb-20 lg:mb-24 md:px-20 pt-8 lg:px-24">
      <div className="grid grid-cols-1 md:grid-cols-2 gap-6 items-center">
        <h1 className="text-midnight text-4xl md:text-5xl lg:text-6xl mt-4 md:w-2/3 md:order-1">
          Simplify your daily <span className="svg_circle">commute</span> with
          Along
        </h1>

        <div
          style={{ backgroundImage: "url('/images/full_circle_design.svg')" }}
          className="bg-center bg-contain bg-no-repeat row-span-4 md:order-2"
        >
          <Image
            src={ImageLibrary.ThreeIphones}
            alt="Iphone"
            width={738}
            height={631}
          />
        </div>

        <div className="flex place-self-center md:place-self-start space-x-2 md:order-last">
          <Image
            src={ImageLibrary.AppStoreBgWhite}
            alt="Apple Store"
            width={126}
            height={30}
          />
          <Image
            src={ImageLibrary.GooglePlayBgWhite}
            alt="Google Store"
            width={126}
            height={30}
          />
        </div>

        <div className="md:order-4">
          <Button label="Get Started" classNames="rounded-3xl md:w-auto" />
        </div>

        <div className="self-start md:order-3">
          {data.map((d) => (
            <div key={d} className="flex items-center space-x-4 mb-2">
              <Image
                src={ImageLibrary.CheckWPrimaryBg}
                height={28}
                width={28}
                alt="checked"
              />
              <p className="text-darkGray">{d}</p>
            </div>
          ))}
        </div>
      </div>
    </div>
  );
};

export default Heading;
