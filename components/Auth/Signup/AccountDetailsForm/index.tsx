"use client";
import { useState } from "react";
import { toast } from "react-toastify"; 
import { useFormik } from "formik";
import { useAppDispatch } from "@/redux/store";
import { updateFormData } from "@/redux/auth/form";
import Button from "@/components/Button";
import InputField from "@/components/InputField";
import { Icon } from "@iconify/react";

interface Props {
  moveToNextTab: () => void;
  driverAuth?: boolean;
}
const AccountDetailsForm: React.FC<Props> = ({ moveToNextTab, driverAuth }) => {
  const [showPassword, setShowPassword] = useState(false);
  const dispatch = useAppDispatch();

  const handleToggleShowPassword = () => {
    setShowPassword((prevState) => !prevState);
  };

  const formik = useFormik({
    initialValues: {
      userName: "",
      contact: "",
      password: "",
    },
    onSubmit: (values) => {
      dispatch(updateFormData(values)); // Dispatch action to update form data
      toast.success("Account details saved successfully!"); // Show success toast
      moveToNextTab(); // Move to the next step
    },
  });

  return (
    <form className="flex-1 flex flex-col" onSubmit={formik.handleSubmit}>
      <div className="flex flex-col space-y-4 px-8 pb-10 min-h-96 shadow-sm shadow-grey">
        {driverAuth && (
          <InputField
            icon={<Icon className="text-dark" icon="clarity:email-line" />}
            label="Email"
            
          />
        )}
        <InputField
          icon={<Icon className="text-dark" icon="heroicons:user" />}
          label="User name"
          name="userName"
          value={formik.values.userName}
          onChange={formik.handleChange}
        />
        <InputField
          icon={<Icon icon="mdi-light:lock" className="text-dark" />}
          type={showPassword ? "text" : "password"}
          label="Password"
          name="password"
          value={formik.values.password}
          onChange={formik.handleChange}
          handleShowPassword={handleToggleShowPassword}
        />
        <InputField
          icon={<Icon icon="fluent:phone-48-regular" className="text-dark" />}
          type="tel"
          label="Phone number"
          name="contact"
          value={formik.values.contact}
          onChange={formik.handleChange}
        />
        {!driverAuth && (
          <InputField
            isCheckbox
            checkboxLabel="I accept the Terms and the Privacy Policy"
          />
        )}
      </div>

      <div className="p-8">
        <Button label={driverAuth ? "Next" : "Carry on"} type="submit" />
      </div>
    </form>
  );
};

export default AccountDetailsForm;
