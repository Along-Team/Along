import Button from "@/components/Button";
import { Icon } from "@iconify/react";
import { useFormikContext } from "formik";

const PaymentForm = () => {
  // Access Formik context to use form handlers
  const formik = useFormikContext<{
    cardNumber: string;
    expDate: string;
    cvv: string;
  }>();


  return (
    <form className="flex flex-col space-y-4">
      <div className="space-y-1 w-full">
        <div className="flex items-center relative space-x-1 h-14">
          <input
            className="input-field bg-[#FAFAFA] text-dark py-2 px-4 rounded-md w-full border-none outline-none"
            type="text"
            placeholder="0000 0000 0000 0000"
            name="cardNumber"
            value={formik.values.cardNumber}
            onChange={formik.handleChange}
            onBlur={formik.handleBlur}
          />
          {formik.touched.cardNumber && formik.errors.cardNumber && (
            <div className="text-red-500 text-sm">{formik.errors.cardNumber}</div>
          )}
          <span className="text-[#9D9D9D] absolute right-3">
            <Icon icon="mdi:credit-card-scan-outline" />
          </span>
        </div>
      </div>

      <div className="space-y-1 space-x-2 flex w-full">
        <div>
          <input
            className="input-field bg-[#FAFAFA] text-dark py-2 px-4 rounded-md w-full border-none outline-none"
            type="text"
            placeholder="MM/YYYY"
            name="expDate"
            value={formik.values.expDate}
            onChange={formik.handleChange}
            onBlur={formik.handleBlur}
          />
          {formik.touched.expDate && formik.errors.expDate && (
            <div className="text-red-500 text-sm">{formik.errors.expDate}</div>
          )}
        </div>

        <div>
          <input
            className="input-field bg-[#FAFAFA] text-dark py-2 px-4 rounded-md w-full border-none outline-none"
            type="text"
            placeholder="XXXX"
            name="cvv"
            value={formik.values.cvv}
            onChange={formik.handleChange}
            onBlur={formik.handleBlur}
          />
          {formik.touched.cvv && formik.errors.cvv && (
            <div className="text-red-500 text-sm">{formik.errors.cvv}</div>
          )}
        </div>
      </div>
      <Button label="Add Card" classNames="w-auto self-end" />
    </form>
  );
};

export default PaymentForm;
