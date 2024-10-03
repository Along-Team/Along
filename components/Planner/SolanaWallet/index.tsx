import Button from "@/components/Button";
import CustomIcon from "@/components/CustomIcon";
import ImageLibrary from "@/components/shared/ImageLibrary";
import Image from "next/image";

interface IProps {
  forDriver?: boolean;
}

const SolanaWallet: React.FC<IProps> = ({ forDriver }) => {
  return (
    <div>
      <p className="text-sm text-gray-400 font-medium mb-4">
        {forDriver ? "Solana Wallet" : "Pay with Solana"}
      </p>
      <div className="flex space-x-4 mb-4">
        <div className="flex-1 p-4 bg-[#B7DDD2] rounded-2xl">
          <h4 className="text-lg text-midnightBlue opacity-60 mb-2">
            Solana Price
          </h4>
          <div className="flex items-center justify-between">
            <h2 className="text-midnightBlue text-4xl">151.4</h2>

            <div className="flex space-x-1">
              <CustomIcon icon={ImageLibrary.TrendDownSolid} />
              <span className="text-midnightBlue opacity-80">
                245.22 (5.58%)
              </span>
            </div>
          </div>
        </div>

        <div>
          <Button
            icon={
              <div className="h-10 py-1 w-[25px]">
                <Image
                  src={ImageLibrary.SmartPhoneIcon}
                  width={30}
                  height={30}
                  alt="Scan Smart Phone"
                />
              </div>
            }
            classNames="bg-transparent border border-midnight rounded-3xl"
          />
        </div>
      </div>
      <p className="text-sm text-gray-400 font-medium mb-4">Assets</p>

      <div className="p-4 bg-[#E3E9F0] rounded-2xl flex justify-between mb-4">
        <div className="flex space-x-2 items-center basis-1/2">
          <div className="h-11 w-11">
            <Image
              src={ImageLibrary.SolanaLogo}
              height={44}
              width={44}
              alt="Solana Logo"
            />
          </div>
          <div>
            <h4 className="font-semibold text-midnightBlue mb-2">Solana</h4>
            <p className="text-xs text-midnightBlue opacity-40">SOL</p>
          </div>
        </div>
        <div className="flex justify-between items-center basis-1/2">
          <div className="h-6 w-12">
            <Image
              src={ImageLibrary.chart}
              height={44}
              width={44}
              alt="Chart Icon"
            />
          </div>
          <div>
            <h4 className="font-semibold text-midnightBlue mb-2">₦1,265.016</h4>
            <p className="text-midnightBlue opacity-80">+12.32%</p>
          </div>
        </div>
      </div>
    </div>
  );
};

export default SolanaWallet;
