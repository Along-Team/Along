import Button from "@/components/Button";
import ImageLibrary from "@/components/shared/ImageLibrary";
import Image from "next/image";
import BoardingInfo from "../../BoardingInfo";
import BoardingPass from "../../BoardingPass";

interface IProps {
  hasPaid: boolean;
  handleClick: () => void;
}

const TicketSummary: React.FC<IProps> = ({ hasPaid, handleClick }) => {
  return (
    <div>
      <div
        className="relative bg-no-repeat bg-cover bg-center p-4  rounded-bl-3xl"
        style={{
          backgroundImage: "url(/images/ticketsummary_bg.svg)",
        }}
      >
        <div className="flex justify-between items-center mb-3">
          <h3 className="text-xl">
            {hasPaid ? "Payment Confirmed" : "Purchase Ticket"}
          </h3>
          <div>
            <Button
              label="Adult"
              endIcon={
                <div className="w-[20px] h-[20px]">
                  <Image
                    src={ImageLibrary.Man}
                    height={30}
                    width={30}
                    alt="Man icon"
                  />
                </div>
              }
              classNames="bg-lightGray text-midnight bg-opacity-35"
            />
          </div>
        </div>
        {!hasPaid && (
          <div className="absolute w-full left-1/2 -translate-x-1/2 px-4">
            <BoardingInfo />
          </div>
        )}
      </div>
      {hasPaid && (
        <div className="px-7 -mt-4 z-10 relative">
          <BoardingPass />
          <div className="w-full mt-4 pb-12">
            <Button
              label="Start Trip"
              onClick={handleClick}
              classNames="w-full"
            />
          </div>
        </div>
      )}
    </div>
  );
};

export default TicketSummary;
