import Button from "@/components/Button";
import VerificationCodeInput from "@/components/VerificationCodeInput";
import Link from "next/link";
import { useRouter } from "next/navigation";

interface Props {
  link: string;
}

const ConfirmationCode: React.FC<Props> = ({ link }) => {
  const router = useRouter();

  const handleVerify = () => {
    router.push(link);
  };

  return (
    <div className="flex-1 flex flex-col">
      <div className=" px-8 pb-10 min-h-96 shadow-sm shadow-grey">
        <VerificationCodeInput />
        <p className="mt-6 mb-10 text-sm">
          Haven&apos;t received your code?
          <Link
            rel="stylesheet"
            className="text-dark block font-semibold"
            href="#_"
          >
            Send the code again
          </Link>
        </p>
      </div>
      <div className="p-8">
        <Button label="Verify Account" onClick={handleVerify} />
      </div>
    </div>
  );
};

export default ConfirmationCode;
