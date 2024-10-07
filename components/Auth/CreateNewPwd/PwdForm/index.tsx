"use client";

import Button from "@/components/Button";
import InputField from "@/components/InputField";
import { useState } from "react";
import { Icon } from "@iconify/react";

const PwdForm: React.FC = () => {
  const [showPassword, setShowPassword] = useState(false);
  const [showSecondPassword, setShowSecondPassword] = useState(false);

  const handleShowPassword = () => {
    setShowPassword((prevState) => !prevState);
  };

  const handleSecondShowPassword = () => {
    setShowSecondPassword((prevState) => !prevState);
  };

  const handleSubmit = (e: React.FormEvent) => {
    e.preventDefault();
  };

  return (
    <form className="flex-1 flex flex-col mt-10" onSubmit={handleSubmit}>
      <div className="flex-1 flex flex-col space-y-4 shadow-sm shadow-grey px-8 pb-10">
        <InputField
          label="New Code"
          icon={<Icon icon="mdi-light:lock" className="text-dark" />}
          type={showPassword ? "text" : "password"}
          handleShowPassword={handleShowPassword}
        />

        <p className="py-4 text-xs">
          Minimum 8 characters, with a combination of upper and lower case
          letters, characters and numbers.
        </p>

        <InputField
          label="Verify Code"
          icon={<Icon icon="mdi-light:lock" className="text-dark" />}
          type={showSecondPassword ? "text" : "password"}
          handleShowPassword={handleSecondShowPassword}
        />
      </div>

      <div className="px-8 pt-8">
        <Button label="Confirm New Password" />
      </div>
    </form>
  );
};

export default PwdForm;
