import ImageLibrary from "@/components/shared/ImageLibrary";
import Image from "next/image";

const Footer = () => {
  return (
    <div className="fixed bottom-0 left-0 w-full z-40">
      <div className="relative bg-midnight px-2 py-3 border-b-4 border-b-primary">
        <button className="mx-auto absolute -top-4 left-1/2 -translate-x-1/2 bg-primary h-7 w-7 rounded-full flex items-center justify-center">
          <Image
            src={ImageLibrary.ShowMore}
            height={15}
            width={15}
            alt="show more about along"
          />
        </button>
        <div className="relative">
          <div className="w-[120px] h-24 absolute -bottom-[68px]">
            <Image
              src={ImageLibrary.AlongIphoneApp}
              width={180}
              height={115}
              alt="Using along on iphone"
              className="w-full h-full object-cover"
            />
          </div>
        </div>

        <div className="ml-28">
          <div className="text-white flex space-between w-full items-center">
            <h4 className="text-sm flex-1">Is this your route?</h4>
            <a href="#" className="text-blue-600 underline text-xs">
              Scan QR Code
            </a>
          </div>

          <div className="flex space-between items-end mt-2">
            <p className="text-xs text-white flex-1">Take it with you!</p>

            <div className="flex justify-center items-center gap-1">
              <a href="/#" target="_blank">
                <Image
                  src={ImageLibrary.AppStoreBgWhite}
                  width={75}
                  height={50}
                  alt="Along app logo"
                />
              </a>
              <a href="/#" target="_blank">
                <Image
                  src={ImageLibrary.GooglePlayBgWhite}
                  width={75}
                  height={50}
                  alt="Along app logo"
                />
              </a>
            </div>
          </div>
        </div>
      </div>
    </div>
  );
};

export default Footer;
