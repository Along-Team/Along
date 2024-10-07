import Button from "@/components/Button";
import { Icon } from "@iconify/react";

const PaymentForm = () => {
  return (
    <form className="flex flex-col space-y-4">
      <div className="space-y-1 w-full">
        <div className="flex items-center relative space-x-1 h-14">
          <input
            className="input-field bg-[#FAFAFA] text-dark py-2 px-4 rounded-md w-full border-none outline-none"
            type="text"
            placeholder="0000 0000 0000 0000"
          />
          <span className="text-[#9D9D9D] absolute right-3">
            <Icon icon="mdi:credit-card-scan-outline" />
          </span>
        </div>
      </div>

      <div className="space-y-1 space-x-2 flex w-full">
        <input
          className="input-field bg-[#FAFAFA] text-dark py-2 px-4 rounded-md w-full border-none outline-none"
          type="text"
          placeholder="MM/YYYY"
        />
        <input
          className="input-field bg-[#FAFAFA] text-dark py-2 px-4 rounded-md w-full border-none outline-none"
          type="text"
          placeholder="XXXX"
        />
      </div>
      <Button label="Add Card" classNames="w-auto self-end" />
    </form>
  );
};

export default PaymentForm;
