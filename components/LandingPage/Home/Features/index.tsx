import data from "./data";
import Image from "next/image";
import SpanWrapper from "@/components/LandingPage/SpanWrapper";

const Features: React.FC = () => {
  return (
    <div className="p-10 md:p-20 lg:24">
      <div className="text-center">
        <SpanWrapper text="FEATURES" />
        <h1 className="text-3xl md:text-4xl lg:text-5xl mb-10 md:mb-16 mt-4 md:w-2/3 mx-auto">
          Explore the key features that make along your go-to
          <span className="svg_underline"> transit app.</span>
        </h1>
      </div>
      <div className="flex flex-col space-y-6 md:flex-row md:space-y-0 md:space-x-6">
        {data.map((feature) => (
          <div
            key={feature.title}
            className="bg-customAlabaster rounded-3xl p-6 md:p-8 flex-initial"
          >
            <Image height={72} width={72} alt={feature.src} src={feature.src} />
            <h3 className="text-lg lg:text-xl font-bold mt-8 mb-2 w-2/3">
              {feature.title}
            </h3>
            <p className="text-darkGray">{feature.text}</p>
          </div>
        ))}
      </div>
    </div>
  );
};

export default Features;
