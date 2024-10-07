"use client";
import { useState } from "react";
import { toast } from "react-toastify";
import { useFormik } from "formik";
import * as Yup from "yup";
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

  // Define validation schema using Yup
  const validationSchema = Yup.object({
    userName: Yup.string().required("Username is required"),
    password: Yup.string().min(6, "Password must be at least 6 characters").required("Password is required"),
    contact: Yup.string().required("Phone number is required"),
    // Add email validation only if driverAuth is true
    email: driverAuth
      ? Yup.string().email("Invalid email address").required("Email is required")
      : Yup.string(),
  });

  const formik = useFormik({
    initialValues: {
      userName: "",
      password: "",
      contact: "",
      email: driverAuth ? "" : "", // Conditionally include email in the form's initial state
    },
    validationSchema, // Add validation schema
    onSubmit: (values) => {
      dispatch(updateFormData(values)); // Dispatch action to update form data
      console.log("Form data submitted: ", values);
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
            name="email"
            value={formik.values.email}
            onChange={formik.handleChange}
            error={formik.touched.email && formik.errors.email ? formik.errors.email : ""}
          />
        )}
        <InputField
          icon={<Icon className="text-dark" icon="heroicons:user" />}
          label="User name"
          name="userName"
          value={formik.values.userName}
          onChange={formik.handleChange}
          error={formik.touched.userName && formik.errors.userName ? formik.errors.userName : ""}
        />
        <InputField
          icon={<Icon icon="mdi-light:lock" className="text-dark" />}
          type={showPassword ? "text" : "password"}
          label="Password"
          name="password"
          value={formik.values.password}
          onChange={formik.handleChange}
          handleShowPassword={handleToggleShowPassword}
          error={formik.touched.password && formik.errors.password ? formik.errors.password : ""}
        />
        <InputField
          icon={<Icon icon="fluent:phone-48-regular" className="text-dark" />}
          type="tel"
          label="Phone number"
          name="contact"
          value={formik.values.contact}
          onChange={formik.handleChange}
          error={formik.touched.contact && formik.errors.contact ? formik.errors.contact : ""}
        />
        {!driverAuth && (
          <InputField
            isCheckbox
            checkboxLabel="I accept the Terms and the Privacy Policy"
          />
        )}
      </div>

      <div className="p-8">
        <Button label={driverAuth ? "Next" : "Carry on"}
          type="submit"
          isLoading={!formik.isValid || formik.isSubmitting}
        />
      </div>
    </form>
  );
};

export default AccountDetailsForm;
