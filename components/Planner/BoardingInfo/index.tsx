import ImageLibrary from "@/components/shared/ImageLibrary";
import Image from "next/image";

const BoardingInfo = () => {
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

      <div className="flex justify-between items-end mt-4">
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
    </div>
  );
};

export default BoardingInfo;
