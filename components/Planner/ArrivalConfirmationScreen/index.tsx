import Button from "@/components/Button";
import InputField from "@/components/InputField";
import ImageLibrary from "@/components/shared/ImageLibrary";
import Image from "next/image";
import DriverTripSummary from "./DriverTripSummary";

interface IProps {
  open: boolean;
  handleClick: () => void;
  forDriver?: boolean;
}

const ArrivalConfirmationScreen: React.FC<IProps> = ({
  open,
  handleClick,
  forDriver,
}) => {
  return (
    open && (
      <div className="px-4 overflow-y-auto pt-8 pb-12">
        <div className="h-[100px] w-[100px] bg-primary bg-opacity-5 rounded-3xl mx-auto flex justify-center items-center mb-4">
          <div className="h-20 w-20 flex justify-center items-center bg-primary bg-opacity-10 rounded-3xl">
            <Image
              src={ImageLibrary.TickSquare}
              width={70}
              height={70}
              alt="tick square icon"
            />
          </div>
        </div>
        <div className="w-full text-center mb-10">
          <h4 className="text-black text-xl font-semibold mb-3">
            {forDriver ? "Along Trip Ended" : "Arrived Destination"}
          </h4>
          <p className="text-[#9E9E9E] font-medium text-sm w-3/4 mx-auto">
            {forDriver
              ? "End of trip summary, ticket sales and bonuses"
              : "You have successfully arrived at the destination"}
          </p>
        </div>

        {forDriver ? (
          <DriverTripSummary />
        ) : (
          <div>
            <div className="bg-white rounded-3xl py-4 px-8 w-5/6">
              <div className="relative border-l-2 border-dashed pl-4">
                <div className="h-8 w-6 rounded-full bg-gray-50 -left-3 -top-[2.2rem] absolute"></div>
                <div className="h-8 w-6 rounded-full bg-gray-50 -left-3 -bottom-[2.2rem] absolute"></div>
                <div className="absolute -right-24 top-1/2 -translate-y-1/2">
                  <Button label="Book Again" />
                </div>
                <div className="flex space-x-2 items-center mb-4">
                  <h3 className="text-onyx text-base">14:05</h3>
                  <div className="h-2 w-16">
                    <Image
                      src={ImageLibrary.PrimaryStopDots}
                      height={9}
                      width={64}
                      alt="stop dots"
                    />
                  </div>
                  <h3 className="text-onyx text-base">2:31 p.m</h3>
                </div>
                <div className="flex space-x-4">
                  <div>
                    <p className="text-xs text-ash">Pick Up</p>
                    <p className="text-xs text-charcoal">Nathan Ogoh</p>
                  </div>{" "}
                  <div>
                    <p className="text-xs text-ash">Bus Stop</p>
                    <p className="text-xs text-charcoal">Life Camp</p>
                  </div>
                </div>
              </div>
            </div>
            <div className="text-center my-4">
              <p className="text-ash mb-4 font-medium text-sm w-3/4 mx-auto">
                Leave a rating & comment
              </p>

              <div className="flex justify-center space-x-1 items-center mb-4">
                {Array(4)
                  .fill("")
                  .map((_, index) => (
                    <div  key={index} className="h-[30px] w-[30px]">
                      <Image
                        src={ImageLibrary.Star}
                        height={30}
                        width={30}
                        alt="Star rating"
                      />
                    </div>
                  ))}
                <div className="h-[30px] w-[30px]">
                  <Image
                    src={ImageLibrary.QuarterFilledStar}
                    height={30}
                    width={30}
                    alt="Quarter Filled Star rating"
                  />
                </div>
              </div>

              <div className="w-4/5 mx-auto mb-10">
                <InputField
                  isTextArea
                  classNames="w-full bg-gray-100 px-4 py-3 rounded-3xl"
                />
              </div>
            </div>
          </div>
        )}

        {forDriver ? (
          <Button label="Open Wallet" onClick={handleClick} />
        ) : (
          <Button label="Continue" onClick={handleClick} />
        )}
      </div>
    )
  );
};

export default ArrivalConfirmationScreen;
