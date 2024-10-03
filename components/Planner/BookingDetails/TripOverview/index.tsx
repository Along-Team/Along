import Button from "@/components/Button";
import CustomIcon from "@/components/CustomIcon";
import ImageLibrary from "@/components/shared/ImageLibrary";
import Image from "next/image";
import DriverInfo from "../../DriverInfo";

interface IProps {
  handleClick: () => void;
  open: boolean;
}

const TripOverview: React.FC<IProps> = ({ handleClick, open }) => {
  return (
    open && (
      <div className="w-full mt-28 px-4 pb-10">
        <Button label="Get Ticket" onClick={handleClick} />

        <DriverInfo />

        <div className="flex space-x-2 items-center mt-4">
          <CustomIcon
            icon={ImageLibrary.Map}
            classNames="bg-neutral-100 h-7 w-7 rounded-full flex justify-center items-center"
          />
          <h4 className="text-ash text-sm">Departure Details</h4>
        </div>

        <div className="flex space-x-4 mt-4">
          <div className="flex flex-col space-y-1.5 items-center">
            <CustomIcon
              icon={ImageLibrary.LocationPin}
              classNames="flex justify-center items-center bg-midnight h-8 w-8 rounded-xl"
            />
            <Image
              src={ImageLibrary.GreyDashedLine}
              height={20}
              width={4}
              alt="Grey Dashed Line"
            />
            <CustomIcon
              icon={ImageLibrary.WalkingWhite}
              classNames="flex justify-center items-center bg-midnight h-8 w-8 rounded-xl"
            />
            <Image
              src={ImageLibrary.GreyDashedLine}
              height={20}
              width={4}
              alt="Grey Dashed Line"
            />
          </div>

          <div className="flex flex-col space-y-4 w-full">
            <div className="pb-6 border-b">
              <h4 className="text-onyx mb-2">Current Location</h4>
              <p className="text-charcoal">Nathan Ogoh Ave</p>
            </div>

            <div className="flex items-center justify-between border-b pb-6 w-full">
              <div>
                <h4 className="text-onyx mb-2">Walk 242 meters</h4>
                <p className="text-charcoal">Takes about 5 minutes</p>
              </div>
              <h3 className="text-midnight text-xl">14:05</h3>
            </div>
          </div>
        </div>
      </div>
    )
  );
};

export default TripOverview;
