import ImageLibrary from "@/components/shared/ImageLibrary";
import Image from "next/image";

const WalkingDistance = () => {
  return (
    <div className="flex items-center">
      <div className="p-2 rounded-xl bg-neutral-100">
        <Image
          src={ImageLibrary.WalkingDark}
          width={20}
          height={20}
          alt="Walking icon"
        />
      </div>
      <Image
        src={ImageLibrary.DashedLine}
        width={20}
        height={10}
        alt="Dashed line icon"
      />
      <div className="p-2 rounded-xl bg-midnight">
        <Image
          src={ImageLibrary.BusWhite}
          width={20}
          height={20}
          alt="Bus icon"
        />
      </div>
      <div className="h-0.5 w-5 bg-midnight"></div>
      <div className="p-2 rounded-xl bg-neutral-100">
        <Image
          src={ImageLibrary.WalkingDark}
          width={20}
          height={20}
          alt="Walking icon"
        />
      </div>
      <Image
        src={ImageLibrary.DashedLine}
        width={20}
        height={10}
        alt="Dashed line icon"
      />
      <Image
        src={ImageLibrary.PaddedCircle}
        width={20}
        height={10}
        alt="Padded Circle icon"
      />
    </div>
  );
};

export default WalkingDistance;
