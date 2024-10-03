"use client";

import Button from "@/components/Button";
import { useState } from "react";
import PhoneInput from "../PhoneInput";
import EmailInput from "../EmailInput";

interface IProps {}

const ResetPasswordTab: React.FC<IProps> = ({}) => {
  const tabs = [
    {
      label: "Telephone",
      subtitle: "Write the phone number which is associated with your account",
      content: <PhoneInput />,
    },
    {
      label: "Email",
      subtitle: "Email whatever should be written here",
      content: <EmailInput />,
    },
  ];

  const [activeTab, setActiveTab] = useState(0);

  return (
    <div className="flex-1 pb-10 md:pb-14 shadow-sm shadow-grey px-8">
      <p className="text-dark mt-2 text-center">{tabs[activeTab].subtitle}</p>
      <div className="flex mt-8 justify-center items-center p-2 rounded-3xl bg-light">
        {tabs.map((tab, index) => (
          <Button
            key={index}
            onClick={() => setActiveTab(index)}
            label={tab.label}
            classNames={`text-dark rounded-3xl ${
              activeTab === index ? "bg-white" : "bg-light"
            }`}
          />
        ))}
      </div>

      <div className="mt-8">{tabs[activeTab].content}</div>
    </div>
  );
};

export default ResetPasswordTab;
