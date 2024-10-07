"use client";

import { useState } from "react";
import BonusView from "../BonusView";
import WalletView from "../WalletView";
import Button from "@/components/Button";

interface IProps {}

const WalletTab: React.FC<IProps> = ({}) => {
  const [activeTab, setActiveTab] = useState(0);

  const tabs = [
    { label: "Wallet", content: <WalletView /> },
    { label: "Bonus", content: <BonusView /> },
  ];
  return (
    <div className="flex-1 pb-10 md:pb-14 shadow-sm shadow-grey px-8">
      <div className="flex justify-center items-center p-2 rounded-3xl bg-light">
        {tabs.map((tab, index) => (
          <Button
            key={index}
            onClick={() => setActiveTab(index)}
            label={tab.label}
            classNames={`rounded-3xl ${
              activeTab === index
                ? "bg-white text-midnight"
                : "bg-light text-dark"
            }`}
          />
        ))}
      </div>

      <div className="mt-4">{tabs[activeTab].content}</div>
    </div>
  );
};

export default WalletTab;
