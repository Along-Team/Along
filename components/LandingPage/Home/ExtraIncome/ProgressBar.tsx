const ProgressBar: React.FC = () => {
  return (
    <div className="bg-white font-poppins rounded-3xl p-6 border border-[#2222222E]">
      <div className="flex justify-between mb-6 md:mb-8">
        <h4 className="text-sm md:text-base font-semibold">Progress Bar</h4>
        <h4 className="text-sm md:text-base font-bold">₦255,000</h4>
      </div>
      <div className="w-full bg-mist rounded-full h-3 md:h-6 relative">
        <div className="bg-midnight h-6 w-6 md:h-12 md:w-12 rounded-full absolute top-1/2 left-1/2 -translate-x-1/2 -translate-y-1/2"></div>
      </div>
      <div className="flex flex-col md:items-center md:flex-row justify-between mt-6 md:mt-8">
        <h4 className="text-xs md:text-sm font-semibold">
          Bonus Earned with the Along App
        </h4>
        <h2 className="text-mist font-bold mt-4 md:mt-0 text-4xl md:text-3xl">
          ₦27,448
        </h2>
      </div>
      <div className=" flex justify-between mt-8 md:mt-10">
        <h4 className="text-sm md:text-base font-semibold">Total Made</h4>
        <h4 className="text-sm md:text-base font-bold">₦282,448</h4>
      </div>
    </div>
  );
};

export default ProgressBar;
