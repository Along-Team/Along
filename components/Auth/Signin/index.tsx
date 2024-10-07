import Button from "@/components/Button";
import SigninForm from "./SigninForm";
import { Icon } from "@iconify/react";

interface Props {
  driverComponent?: boolean;
}

const Signin: React.FC<Props> = ({ driverComponent = false }) => {
  return (
    <div className="flex-1 w-full pt-4 px-6 pb-8 sm:pb-10">
      <div className="text-center">
        <h2 className="text-2xl">Welcome back</h2>
        <p className="mt-3 text-sm md:text-base">
          {driverComponent
            ? "Access your driver account"
            : "Access your account"}
        </p>
      </div>

      <SigninForm driverComponent={driverComponent} />

      <div className="flex space-x-2 items-center my-6">
        <hr className="w-full text-ash" />
        <p
          className={`text-sm text-ash text-center ${
            driverComponent ? "" : "basis-3/4"
          } `}
        >
          {driverComponent ? "Or" : "Or log in as"}
        </p>
        <hr className="w-full text-ash" />
      </div>
      <div>
        {driverComponent ? (
          <Button
            classNames="bg-white text-midnight border border-[#EFEDED]"
            label="Continue without account"
          />
        ) : (
          <Button
            classNames="bg-white text-dark border border-[#EFEDED]"
            icon={<Icon icon="cil:car-alt" />}
            label="Along Driver"
            link="/driver/sign-in"
          />
        )}
      </div>
    </div>
  );
};

export default Signin;
