"use client";

import { useState } from "react";
import RegisterTabs from "../RegisterTabs";
import AccountDetailsForm from "./AccountDetailsForm";
import ProfilePicture from "./ProfilePicture";
import PaymentMethod from "./PaymentMethod";
import ConfirmationCode from "./ConfirmationCode";

interface IProps {
  isDriverComp?: boolean;
}

const Signup: React.FC<IProps> = ({ isDriverComp }) => {
  const [activeTab, setActiveTab] = useState(0);

  const moveToNextTab = () => setActiveTab(activeTab + 1);

  // todo: user number from form
  const phoneNumber = "+234 803 547 5569";
  const riderTabs = [
    {
      label: "Account details",
      subtitle:
        "Fill in some details about yourself to create your new account.",
      content: <AccountDetailsForm moveToNextTab={moveToNextTab} />,
    },
    {
      label: "Profile picture",
      subtitle:
        "Fill in some details about yourself to create your new account.",
      content: <ProfilePicture moveToNextTab={moveToNextTab} />,
    },
    {
      label: "Add payment method",
      subtitle: `Connect your travel card or add your debit/credit card`,
      content: <PaymentMethod moveToNextTab={moveToNextTab} />,
    },
    {
      label: "Enter the code",
      subtitle: `We have sent you a confirmation code on the phone number ${phoneNumber}`,
      content: <ConfirmationCode link="/rider/getting-started" />,
    },
  ];

  const driverTabs = [
    {
      label: "Account details",
      subtitle:
        "Fill in some details about yourself to create your new account.",
      content: <AccountDetailsForm moveToNextTab={moveToNextTab} driverAuth />,
    },
    {
      label: "Profile picture",
      subtitle:
        "Fill in some details about yourself to create your new account.",
      content: <ProfilePicture moveToNextTab={moveToNextTab} />,
    },

    {
      label: "Enter the code",
      subtitle: `We have sent you a confirmation code on the phone number ${phoneNumber}`,
      content: <ConfirmationCode link="/driver/getting-started" />,
    },
  ];

  return (
    <RegisterTabs
      tabs={isDriverComp ? driverTabs : riderTabs}
      activeTab={activeTab}
    />
  );
};

export default Signup;
