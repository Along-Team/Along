"use client";

import InputField from "@/components/InputField";

const VerificationCodeInput: React.FC = () => {
  return (
    <div className="flex justify-center space-x-2">
      {Array.from({ length: 5 }).map((_, index) => (
        <InputField key={index} type="number" maxLength={1} />
      ))}
    </div>
  );
};

export default VerificationCodeInput;
