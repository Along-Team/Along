"use client";

import Button from "@/components/Button";
import ResetPasswordTab from "./ResetPasswordTab";
import { usePathname, useRouter } from "next/navigation";

const ResetPassword: React.FC = () => {
  const router = useRouter();
  const pathname = usePathname();

  const handleClick = () => {
    const base = pathname.split("/")[1];
    router.push(`/${base}/security-code`);
  };

  return (
    <div className="flex flex-col flex-1 pt-8 pb-4">
      <div className="px-8">
        <h2 className="text-2xl text-center">Reset password</h2>
      </div>

      <ResetPasswordTab />

      <div className="px-8 pt-8">
        <Button onClick={handleClick} label="Send the Security Code" />
      </div>
    </div>
  );
};

export default ResetPassword;
