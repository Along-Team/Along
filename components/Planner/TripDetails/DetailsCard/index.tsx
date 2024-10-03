import Image from "next/image";
import BoardingPass from "../../BoardingPass";
import DriverInfo from "../../DriverInfo";
import ImageLibrary from "@/components/shared/ImageLibrary";
import BoardingInfo from "../../BoardingInfo";

interface IProps {
  driverArrived: boolean;
}

const DetailsCard: React.FC<IProps> = ({ driverArrived }) => {
  return (
    <div className="fixed bottom-0 w-full rounded-2xl bg-gray-50 pt-4 pb-24 z-10">
      <div className="text-center mb-4">
        <h4>Trip Details</h4>
      </div>
      <div className="flex flex-col space-y-4 px-4">
        {driverArrived ? (
          <div className="w-[330] h-52">
            <Image
              src={ImageLibrary.AdVideo}
              width={376}
              height={211}
              alt="ad video"
              className="w-full h-full"
            />
          </div>
        ) : (
          <>
            <BoardingInfo />
            <DriverInfo />
          </>
        )}
      </div>
    </div>
  );
};

export default DetailsCard;
