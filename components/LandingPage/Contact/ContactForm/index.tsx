"use client";

import Button from "@/components/Button";
import InputField from "@/components/InputField";
import ImageLibrary from "@/components/shared/ImageLibrary";
import Image from "next/image";

const ContactForm = () => {
  const texts = ["Risk Free", "Cancel anytime", "24/7 Support"];
  return (
    <div className="px-6 py-4 bg-white rounded-2xl">
      <h3 className="text-xl font-bold mb-4">First, create your Account</h3>

      <form action="" className="">
        <div className="flex flex-col space-y-4 min-h-80 mb-4 py-4 md:border-dashed md:border-t">
          <div className="flex flex-col md:flex-row gap-4">
            <InputField
              label="First Name*"
              classNames="bg-white outline outline-lightSilver placeholder-darkGray rounded-l-xl rounded-r-xl"
              placeholder="Jane"
            />
            <InputField
              label="Last Name*"
              placeholder="Doe"
              classNames="bg-white outline outline-lightSilver placeholder-darkGray rounded-l-xl rounded-r-xl"
            />
          </div>
          <InputField
            label="Email*"
            placeholder="jane@example.com"
            classNames="bg-white outline outline-lightSilver placeholder-darkGray rounded-l-xl rounded-r-xl"
          />
          <InputField
            label="Password*"
            placeholder="Choose password"
            classNames="bg-white outline outline-lightSilver placeholder-darkGray rounded-l-xl rounded-r-xl"
          />
        </div>
        <Button
          type="submit"
          label="Join the waitlist"
          classNames="rounded-3xl"
        />
      </form>

      <div className="mt-6 flex flex-col md:flex-row justify-between">
        {texts.map((text, i) => (
          <div key={i} className="flex items-center space-x-2 mb-2">
            <Image
              src={ImageLibrary.CheckWPrimaryBg}
              height={28}
              width={28}
              alt="checked"
            />
            <p className="text-sm md:text-xs text-darkGray">{text}</p>
          </div>
        ))}
      </div>
    </div>
  );
};

export default ContactForm;
