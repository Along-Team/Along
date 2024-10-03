import Button from "@/components/Button";
import WalkingDistance from "../WalkingDistance";
import Image from "next/image";
import ImageLibrary from "@/components/shared/ImageLibrary";

interface IProps {
  time: string;
  duration: string;
  seatsAvailable: number;
  departure: string;
  price: string;
  handleClick: () => void;
}

const TicketCard: React.FC<IProps> = ({
  time,
  duration,
  seatsAvailable,
  departure,
  price,
  handleClick,
}) => {
  return (
    <div className="embla__slide bg-white rounded-2xl shadow-sm py-4 px-6 flex items-center flex-col sm:items-stretch ">
      <div className="flex gap-4 sm:justify-around">
        <div>
          <h4 className="text-lg mb-2 text-onyx">{time}</h4>
          <p className="text-ash">
            {duration} •{" "}
            {seatsAvailable > 1 ? `${seatsAvailable} Seats` : `1 Seat`}
          </p>
        </div>
        <div>
          <p className="text-ash mb-3">From</p>
          <h4 className="text-base text-onyx">{departure}</h4>
        </div>
      </div>

      <div className="flex sm:justify-around space-x-2">
        <WalkingDistance />

        <div className="">
          <Button
            onClick={handleClick}
            classNames="bg-secondary text-midnight"
            icon={
              <div className="w-[20px] h-[20px]">
                <Image
                  src={ImageLibrary.Ticket}
                  width={30}
                  height={30}
                  alt="ticket icon"
                />
              </div>
            }
            label={price}
          />
        </div>
      </div>
    </div>
  );
};

export default TicketCard;
