import Button from "@/components/Button";
import ImageLibrary from "@/components/shared/ImageLibrary";
import Image from "next/image";

const BottomHeader: React.FC = () => {
  return (
    <div className="p-10 md:p-20 lg:24">
      <div className="flex md:flex-row flex-col bg-black p-8 md:py-10 md:px-12 rounded-3xl md:justify-between md:items-center">
        <div className="mb-6 md:mb-8 md:basis-1/2">
          <h1 className="text-3xl md:text-4xl lg:text-5xl mb-4 text-white">
            Ready to experience a smarter commute? Download
            <span className="text-primary"> along </span>
            today!
          </h1>
          <div className="flex space-x-2 mb-6 md:mb-8 md:order-last">
            <Image
              src={ImageLibrary.AppStoreBgBlack}
              alt="Apple Store"
              width={100}
              height={30}
            />
            <Image
              src={ImageLibrary.GooglePlayBgBlack}
              alt="Google Store"
              width={100}
              height={30}
            />
          </div>
          <Button
            label="Get Started"
            classNames="rounded-3xl md:w-auto bg-white text-dark"
          />
        </div>
        <Image
          src={ImageLibrary.IphoneWoodenHands}
          alt="iPhone 12 pro wooden hands"
          width={651}
          height={501}
          className="self-end mb-[-32px] md:mb-[-40px] md:w-4/5"
        />
      </div>
    </div>
  );
};

export default BottomHeader;
