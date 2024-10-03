import SpanWrapper from "@/components/LandingPage/SpanWrapper";
import data from "./data";

const Earning: React.FC = () => {
  return (
    <div className="py-10 px-6 md:px-8 my-4 md:my-14 mx-10 md:mx-20 lg:mx-24 border border-dashed border-[#D4D4D4] rounded-3xl">
      <div className="text-left mb-6">
        <SpanWrapper text="EARNING" />
      </div>
      <div className="flex flex-col md:flex-row md:space-x-10 border-b border-dashed border-[#D4D4D4] pb-6 md:pb-8">
        <h1 className="max-w-[260px] md:max-w-[650px] text-3xl sm:text-4xl  lg:text-5xl mb-4 md:mb-0 basis-2/3">
          <span className="text-gray-400">Maximise Your Income </span>with Along
          - For Drivers
        </h1>

        <p className="text-darkGray basis-1/3">
          Along offers drivers the opportunity to significantly boost their
          earnings. By partnering with Along, drivers can expect to:
        </p>
      </div>
      <div className="flex flex-col space-y-6 md:flex-row md:space-y-0 md:space-x-6">
        {data.map((ea) => (
          <div key={ea.title} className="text-center">
            <h2 className="text-2xl md:text-3xl font-bold mt-6 mb-4">
              {ea.title}
            </h2>
            <p className="text-darkGray">{ea.text}</p>
          </div>
        ))}
      </div>
    </div>
  );
};

export default Earning;
