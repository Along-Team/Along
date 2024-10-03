import { useEffect, useState } from "react";
import DetailsCard from "./DetailsCard";
import PickUpPoint from "./PickUpPoint";
import ToDestination from "../ToDestination";

interface IProps {
  open: boolean;
  finishTrip: () => void;
}

const TripDetails: React.FC<IProps> = ({ open, finishTrip }) => {
  const [driverArrived, setDriverArrived] = useState(false);

  useEffect(() => {
    if (open) {
      const arrivalTimer = setTimeout(() => {
        setDriverArrived(true);

        const finishTimer = setTimeout(() => {
          if (finishTrip) {
            finishTrip();
          }
        }, 10000);

        return () => clearTimeout(finishTimer);
      }, 10000);

      return () => clearTimeout(arrivalTimer);
    }
  }, [open, finishTrip]);

  return (
    open && (
      <div>
        <div className="bg-white text-onyx pt-7 pb-8 px-4 w-full">
          {driverArrived ? <ToDestination /> : <PickUpPoint />}
        </div>

        <DetailsCard driverArrived={driverArrived} />
      </div>
    )
  );
};

export default TripDetails;
