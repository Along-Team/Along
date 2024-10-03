"use client";

import Button from "@/components/Button";
import InputField from "@/components/InputField";
import Link from "next/link";
import { useState } from "react";
import { Icon } from "@iconify/react";
import { useRouter } from "next/navigation";

interface Props {
  driverComponent?: boolean;
}

const Signin: React.FC<Props> = ({ driverComponent }) => {
  const [showPassword, setShowPassword] = useState(false);
  const router = useRouter();
  const handleShowPassword = () => {
    setShowPassword((prevState) => !prevState);
  };

  const handleSubmit = (e: React.FormEvent) => {
    e.preventDefault();
    let pathname = "/rider";
    if (driverComponent) {
      pathname = "/driver";
    }
    router.push(`${pathname}/getting-started`);
  };

  return (
    <form className="mt-16" onSubmit={handleSubmit}>
      <div className="flex flex-col space-y-4 min-h-60">
        <InputField
          icon={<Icon className="text-dark" icon="heroicons:user" />}
          label="User name"
        />
        <InputField
          label="Password"
          icon={<Icon icon="mdi-light:lock" className="text-dark" />}
          type={showPassword ? "text" : "password"}
          handleShowPassword={handleShowPassword}
        />

        <div className="flex w-full justify-between items-center">
          <InputField isCheckbox checkboxLabel="Remember me" />
          <p className="basis-3/4 text-right">
            <Link
              className="text-dark text-sm"
              href={`${driverComponent ? "/driver" : "/rider"}/forgotpassword`}
            >
              Forgot your code?
            </Link>
          </p>
        </div>
      </div>

      <Button classNames="mt-12" type="submit" label="Log in" />
    </form>
  );
};

export default Signin;
