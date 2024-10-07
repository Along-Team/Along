import ImageLibrary from "@/components/shared/ImageLibrary";
import Image from "next/image";

interface IProps {}

const PickUpPoint: React.FC<IProps> = ({}) => {
  return (
    <div className="flex space-x-3">
      <div className="bg-primary rounded-3xl pr-0.5 h-16 w-16 flex items-center justify-center">
        <div className="w-12 h-12">
          <Image
            src={ImageLibrary.BusDark}
            width={48}
            height={48}
            alt="Bus Icon"
          />
        </div>
      </div>

      <div>
        <h4 className="font-semibold text-sm text-onyx">Pick up point</h4>
        <h3 className="font-semibold text-xl text-onyx">Nathan Ogoh Ave</h3>
        <p className="text-black text-xs opacity-40 uppercase">
          ARRIVING IN 15MINS
        </p>
      </div>
    </div>
  );
};

export default PickUpPoint;
