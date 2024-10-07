import ImageLibrary from "@/components/shared/ImageLibrary";
import Image from "next/image";

interface IProps {
  forDriver?: boolean;
}

const ToDestination: React.FC<IProps> = ({ forDriver }) => {
  return (
    <div>
      <div className="h-4 w-full">
        <Image
          src={ImageLibrary.StopDots}
          height={10}
          width={390}
          alt="stop dots"
          className="w-full"
        />
      </div>
      <h3 className="font-semibold text-xl mb-2 text-onyx">
        Lifecamp Bus Stop
      </h3>
      <p className="text-black text-xs opacity-40 uppercase">
        {forDriver ? "NEXT STOP IN 4 MINS" : "ARRIVING DESTINATION IN 40 MINS"}
      </p>
    </div>
  );
};

export default ToDestination;
