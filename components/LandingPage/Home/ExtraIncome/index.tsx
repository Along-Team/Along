import ProgressBar from "./ProgressBar";
import { Poppins } from "next/font/google";

const poppins = Poppins({
  weight: ["400", "500", "600", "700"],
  subsets: ["latin"],
});

const ExtraIncome: React.FC = () => {
  return (
    <div className="p-10 md:p-20 lg:p-24">
      <div className="flex flex-col gap-8 md:gap-4 md:flex-row bg-customAlabaster p-8 md:py-10 md:px-12 rounded-3xl md:justify-between md:items-center">
        <div className="basis-1/2">
          <h1 className="text-midnight text-3xl md:text-4xl mb-4">
            Become an Along driver and earn extra income.
          </h1>
          <p className="text-midnight">
            Looking to become an Along driver? Earn extra income by sharing your
            vehicle.{" "}
            <span className="underline md:no-underline">Learn more</span> about
            our driver program.
          </p>
          <p className="text-darkGray hidden md:block">Learn more</p>
        </div>
        <div className={`basis-[52%] ${poppins.className}`}>
          <ProgressBar />
        </div>
      </div>
    </div>
  );
};

export default ExtraIncome;
