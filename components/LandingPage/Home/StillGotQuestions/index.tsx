import Button from "@/components/Button";

const StillGotQuestions: React.FC = () => {
  return (
    <div className="px-10 md:px-20 lg:px-24">
      <div className="flex flex-col space-y-10 md:flex-row mt-8 bg-[#F9F7F2] rounded-2xl p-6 md:p-10 md:justify-between md:items-center">
        <div className="md:basis-1/2">
          <h1 className="text-3xl md:text-4xl mb-4">Still got questions?</h1>
          <p className="text-darkGray">
            If you don&apos;t find an answer to your question, contact us, and our
            team will get in touch with you.
          </p>
        </div>
        <Button label="Get in touch" classNames="rounded-3xl md:w-auto" />
      </div>
    </div>
  );
};

export default StillGotQuestions;
