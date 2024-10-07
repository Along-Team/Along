import Button from "@/components/Button";
import ImageLibrary from "@/components/shared/ImageLibrary";
import Image from "next/image";

interface IProps {
  forDriver?: boolean;
}

const BoardingPass: React.FC<IProps> = ({ forDriver }) => {
  return (
    <div className="bg-midnight p-4 rounded-2xl">
      <div className="flex justify-between items-center">
        <div className="flex items-end space-x-2">
          <h4 className="text-xl text-white">14:02</h4>
          <span className="text-ash text-xs mb-0.5">Time of pickup</span>
        </div>
        <div className="flex items-center py-1 px-2 bg-primary justify-center rounded-2xl">
          <div className="w-[20px] h-[20px]">
            <Image
              src={ImageLibrary.BusDark}
              height={30}
              width={30}
              alt="Bus icon"
            />
          </div>
          026
        </div>
      </div>

      <div className="flex justify-between items-end my-4">
        <div className="text-white">
          <p className="mb-1 text-xs text-ash">Location</p>
          <p>Nathan Ogoh</p>
        </div>
        <p className="text-xs text-ash">To</p>
        <div className="text-white">
          <p className="mb-1 text-xs text-ash">Destination</p>
          <p>Lifecamp</p>
        </div>
      </div>

      <div
        className={`pt-4 border-t-2 border-dashed relative ${
          forDriver ? "border-white" : "border-primary"
        }`}
      >
        <div className="h-8 w-8 rounded-full absolute -top-4 -left-[34px] bg-gray-50"></div>
        <div className="h-8 w-8 rounded-full absolute -top-4 -right-[34px] bg-gray-50"></div>
        <div className="h-60 w-60 mb-4 mx-auto">
          <Image
            src={ImageLibrary.Barcode}
            width={225}
            height={225}
            alt="Boarding Pass"
          />
        </div>
      </div>

      <div className="flex w-full justify-between">
        <span className="text-ash">Paid with Solana</span>
        <span className="text-white">₦1,100</span>
      </div>
    </div>
  );
};

export default BoardingPass;
