import CustomIcon from "@/components/CustomIcon";
import SolanaWallet from "../../SolanaWallet";
import ImageLibrary from "@/components/shared/ImageLibrary";
import Button from "@/components/Button";
import { data } from "./data";

const WalletView = () => {
  return (
    <div>
      <SolanaWallet />
      <div className="flex w-full items-center mb-4 mt-7">
        <div className="flex flex-1 items-center space-x-3">
          <CustomIcon icon={ImageLibrary.Ticket} height={28} width={28} />
          <h4 className="text-xl"> Paid Tickets</h4>
        </div>

        <Button
          label="Most recent"
          classNames="w-auto border bg-white text-onyx border-[#EFEDED] rounded-xl"
          endIcon={<CustomIcon icon={ImageLibrary.ChevronDown} />}
        />
      </div>

      <div className="flex flex-col space-y-[10px]">
        {data.map((ride, i) => (
          <div
            className="flex items-stretch w-full p-5 rounded-3xl shadow-xl shadow-[#0000000A] space-x-6"
            key={i}
          >
            <div className="flex-1">
              <div className="flex items-start justify-between mb-4">
                <h4 className="text-xl text-onyx mb-1 font-semibold">
                  {ride.price}
                </h4>
                <p className="text-sm text-primary font-semibold">
                  + {ride.trip_bonus} Bonus
                </p>
              </div>
              <div className="flex justify-between">
                <div>
                  <p className="text-ash text-xs">Location</p>
                  <p className="text-charcoal text-xs">{ride.pick_up}</p>
                </div>
                <div>
                  <p className="text-ash text-xs">Destination</p>
                  <p className="text-charcoal text-xs">{ride.destination}</p>
                </div>
              </div>
            </div>

            <div>
              <Button
                classNames="h-full px-2 rounded-xl"
                icon={<CustomIcon icon={ImageLibrary.ArrowRightWhite} />}
              />
            </div>
          </div>
        ))}
      </div>
    </div>
  );
};

export default WalletView;
