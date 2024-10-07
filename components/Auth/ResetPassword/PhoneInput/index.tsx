import InputField from "@/components/InputField";

const PhoneInput: React.FC = () => {
  return (
    <div className="mt-10 flex justify-center space-x-2">
      <InputField value="+234" classNames="w-20" />
      {Array.from({ length: 4 }).map((_, index) => (
        <InputField key={index} type="number" maxLength={4} placeholder="00" />
      ))}
    </div>
  );
};

export default PhoneInput;
