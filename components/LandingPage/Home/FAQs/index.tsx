import data from "./data";

const FAQs: React.FC = () => {
  return (
    <div className="p-10 md:p-20 lg:p-24 border-t border-b border-opacity-10 border-black md:border-none">
      <div className="text-center mb-12">
        <h1 className="text-3xl md:text-4xl lg:text-5xl mb-4">FAQs</h1>
        <p className="text-darkGray">
          Find answers to your questions about Along.
        </p>
      </div>
      <div className="grid gap-8 md:grid-cols-2 lg:grid-cols-3 mb-8">
        {data.map((question) => (
          <div key={question.title} className="basis-1/3">
            <h3 className="mb-2 text-lg md:text-xl">{question.title}</h3>
            <p className="text-darkGray">{question.text}</p>
          </div>
        ))}
      </div>
    </div>
  );
};

export default FAQs;
