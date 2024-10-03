"use client";
import { useFormik } from "formik";
import { useAppDispatch, useAppSelector } from "@/redux/store";
import { updateFormData, resetFormData } from "@/redux/auth/form";
import { riderSignUp } from "@/redux/auth/features";
import Button from "@/components/Button";
import { Icon } from "@iconify/react";
import Image from "next/image";
import PaymentForm from "./PaymentForm";
import ImageLibrary from "@/components/shared/ImageLibrary";
import { toast } from "react-toastify";

interface Props {
  moveToNextTab: () => void;
}

const PaymentMethod: React.FC<Props> = ({ moveToNextTab }) => {
  const dispatch = useAppDispatch();
  const formData = useAppSelector((state) => state.form);

  const formik = useFormik({
    initialValues: {
      cardNumber: "",
      cvv: "",
      expDate: "",
    },
    onSubmit: async (values) => {
      try {
        // Dispatch action to update form data
        dispatch(updateFormData(values));

        // Combine all form data
        const completeData = { ...formData, ...values };

        // Attempt to sign up the rider
        await dispatch(riderSignUp(completeData)).unwrap();

        // If successful, show a success toast and reset form data
        toast.success("Sign up completed successfully!");
        dispatch(resetFormData());

        // Move to the next step
        moveToNextTab();
      } catch (error) {
        // Handle any errors and show an error toast
        const errorMessage = (error as Error).message || "Something went wrong!";
        toast.error(`Signup failed: ${errorMessage}`);
      }
    },
  });


  return (
    <div className="flex-1 flex flex-col">
      <div className="pt-4 pb-10 border-t min-h-96 shadow-sm shadow-grey  border-t-grey">
        <div className="flex justify-between items-center border-b px-8 pb-4 border-b-grey">
          <span className="text-dark text-xl">
            <Icon icon="mdi:bank-outline" />
          </span>

          <Button classNames="w-auto" label="Bank Transfer" />
        </div>

        <div className="flex px-8 mt-4 items-center space-x-3">
          <Image
            src={ImageLibrary.MasterCardLogo}
            height={32}
            width={45}
            alt="mastercard logo"
          />
          <Image
            src={ImageLibrary.DkLogo}
            height={27}
            width={40}
            alt="Dk logo"
          />
          <Image
            src={ImageLibrary.VisaCardLogo}
            height={18}
            width={55}
            alt="visa logo"
          />
        </div>

        <div className="px-6 my-4">
          <PaymentForm />
        </div>
      </div>

      <div className="p-8">
        <Button label="Next" onClick={moveToNextTab} />
      </div>
    </div>
  );
};

export default PaymentMethod;
