import Button from "@/components/Button";
import CustomIcon from "@/components/CustomIcon";
import ImageLibrary from "@/components/shared/ImageLibrary";
import WalletTab from "./WalletTab";

interface IProps {
  open: boolean;
}

const DriverWallet: React.FC<IProps> = ({ open }) => {
  return (
    open && (
      <div className="overflow-y-auto h-screen pt-12 pb-16">
        <div className="relative w-full bg-[url('/images/ticketsummary_bg.svg')] bg-no-repeat bg-cover bg-center px-4 pt-4 pb-20 rounded-bl-3xl">
          <h3 className="text-xl">My Wallet</h3>
          <div className="absolute w-full left-1/2 -translate-x-1/2 px-7 top-14">
            <div className="bg-midnight p-6 rounded-2xl">
              <div className="mb-4 text-center">
                <p className="mb-2 text-white font-medium text-sm ">
                  Total Balance
                </p>
                <h2 className="text-[32px] text-white font-semibold">
                  ₦8,353.11
                </h2>
              </div>
              <div className="flex space-x-2 justify-between mt-4">
                <Button
                  label="Withdraw"
                  classNames="p-2 rounded-t-2xl rounded-b-xl flex flex-col gap-[6px] bg-[#FFFFFF1C] w-auto"
                  icon={
                    <CustomIcon
                      icon={ImageLibrary.ShareIcon}
                      height={25}
                      width={25}
                      classNames="rounded-lg bg-[#F1F5F9] bg-opacity-10 flex items-center justify-center w-[73px] h-[36px] mb-[6px]"
                    />
                  }
                />

                <Button
                  label="Payment"
                  classNames="p-2 rounded-t-2xl rounded-b-xl flex flex-col gap-[6px] bg-[#FFFFFF1C] w-auto"
                  icon={
                    <CustomIcon
                      icon={ImageLibrary.Wallet}
                      height={25}
                      width={25}
                      classNames="rounded-lg bg-[#F1F5F9] bg-opacity-10 flex items-center justify-center w-[73px] h-[36px] mb-[6px]"
                    />
                  }
                />

                <Button
                  label="More"
                  classNames="p-2 rounded-t-2xl rounded-b-xl flex flex-col gap-[6px] bg-[#FFFFFF1C] w-auto"
                  icon={
                    <CustomIcon
                      icon={ImageLibrary.MoreHor}
                      height={25}
                      width={25}
                      classNames="rounded-lg bg-[#F1F5F9] bg-opacity-10 flex items-center justify-center w-[73px] h-[36px] mb-[6px]"
                    />
                  }
                />
              </div>
            </div>
          </div>
        </div>

        <div className="mt-40">
          <WalletTab />
        </div>
      </div>
    )
  );
};

export default DriverWallet;
