interface Tab {
  label: string;
  subtitle: string;
  content: React.ReactNode;
}

interface TabsProps {
  tabs: Tab[];
  activeTab: number;
}

const RegisterTabs: React.FC<TabsProps> = ({ tabs, activeTab }) => {
  return (
    <div className="flex-1 flex flex-col">
      <div className="flex w-[170px] justify-center mx-auto space-x-4">
        {tabs.map((tab, index) => (
          <div className="" key={index}>
            <div
              className={`h-4 w-6 rounded-lg border-4 ${
                activeTab === index
                  ? "bg-primary border-[#FFD89F]"
                  : "bg-[#F5F5F5] border-[#F5F5F5]"
              }`}
            ></div>
          </div>
        ))}
      </div>
      <div className="text-center flex-1 flex flex-col">
        <div className="px-10">
          <h2 className="text-xl mt-6">{tabs[activeTab].label}</h2>
          <p className="text-sm md:text-base text-dark mt-4 sm:w-2/3 mx-auto">
            {tabs[activeTab].subtitle}
          </p>
        </div>

        <div className="flex-1 mt-8 flex flex-col">
          {tabs[activeTab].content}
        </div>
      </div>
    </div>
  );
};

export default RegisterTabs;
