"use client";

import Button from "@/components/Button";
import VerificationCodeInput from "@/components/VerificationCodeInput";
import Link from "next/link";
import { usePathname, useRouter } from "next/navigation";

interface Props {}

const SecurityCode: React.FC<Props> = ({}) => {
  const router = useRouter();
  const pathname = usePathname();

  const handleClick = () => {
    const base = pathname.split("/")[1];
    router.push(`/${base}/create-new-password`);
  };
  return (
    <div className="flex flex-1 flex-col pt-8 pb-4">
      <div className="px-8">
        <h2 className="text-2xl text-center">Reset password</h2>
        <p className="text-dark mt-4 text-center text-sm">
          We have sent a 5-digit Security Code belonging to the phone number
          +234 803 547 5569
        </p>
      </div>

      <div className="pt-10 pb-10 md:pb-14 px-8 flex-1 shadow-sm shadow-grey">
        <VerificationCodeInput />

        <p className="text-center mt-6">
          Haven't received your code?
          <Link
            rel="stylesheet"
            className="text-dark block font-semibold"
            href="#_"
          >
            Send the code again
          </Link>
        </p>
      </div>

      <div className="px-8 pt-8">
        <Button onClick={handleClick} label="Verify Code" />
      </div>
    </div>
  );
};

export default SecurityCode;
