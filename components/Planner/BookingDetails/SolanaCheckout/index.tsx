import Button from "@/components/Button";
import CustomIcon from "@/components/CustomIcon";
import ImageLibrary from "@/components/shared/ImageLibrary";
import Image from "next/image";
import SolanaWallet from "../../SolanaWallet";

interface IProps {
  open: boolean;
  handleClick: () => void;
}

const SolanaCheckout: React.FC<IProps> = ({ open, handleClick }) => {
  return (
    open && (
      <div className="w-full mt-28 px-4 h-full">
        <SolanaWallet />

        <div className="mb-4">
          <p className="text-sm text-ash font-medium">Ticket Price</p>
          <div className="flex justify-between items-end">
            <h2 className="text-onyx text-3xl">₦1,100</h2>
            <p className="text-ash text-sm w-48 text-right">
              Your Solana balance after purchase will be ₦165.016
            </p>
          </div>
        </div>
        <div className="w-full pb-8">
          <Button label="Pay with Solana" onClick={handleClick} />
        </div>
      </div>
    )
  );
};

export default SolanaCheckout;
