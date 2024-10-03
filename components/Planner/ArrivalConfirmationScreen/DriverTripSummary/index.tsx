const DriverTripSummary = () => {
  return (
    <div className="px-6 py-8 flex flex-col space-y-12">
      <div className="grid grid-cols-2 space-x-6 w-full ">
        <p className="text-base text-[#9e9e9e]">
          Total Number Of <br />
          Tickets
        </p>
        <div className="flex flex-col">
          <p className="text-onyx text-base">20 Tickets</p>
          <p className="text-base text-primary">₦49,000</p>
        </div>
      </div>

      <div className="grid grid-cols-2 space-x-6 w-full ">
        <p className="text-base text-[#9e9e9e]">
          Total Routes <br />
          Mapped
        </p>
        <div className="flex flex-col">
          <p className="text-onyx text-base">20 Routes</p>
          <p className="text-base text-primary">150 km</p>
        </div>
      </div>

      <div className="grid grid-cols-2 space-x-6 w-full  items-center">
        <p className="text-base text-[#9e9e9e]">
          Mapping Bonus <br />
          Earned
        </p>
        <div className="flex flex-col">
          <p className="text-base text-primary">₦3,000</p>
        </div>
      </div>

      <div className="grid grid-cols-2 space-x-6 w-full  items-center">
        <p className="text-base text-[#9e9e9e]">Total Earned</p>
        <div className="flex flex-col">
          <p className="text-base text-onyx">₦52,100</p>
        </div>
      </div>
    </div>
  );
};

export default DriverTripSummary;
