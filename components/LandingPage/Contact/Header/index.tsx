import SpanWrapper from "@/components/LandingPage/SpanWrapper";
import { imageSrc } from "./data";
import Image from "next/image";

const Header: React.FC = () => {
  return (
    <div className="">
      <SpanWrapper classNames="bg-white" text="JOIN THE CLUB" />

      <h1 className="text-4xl md:text-5xl lg:text-6xl mt-4 mb-8 md:mb-10 md:max-w-2/3 md:order-1">
        Simplify your daily <span className="svg_circle">commute</span> with
        Along
      </h1>

      <div className="hidden md:block">
        <p className="text-gray-700 mb-4">TRUSTED BY*</p>

        <div
          className="grid items-center gap-4"
          style={{
            gridTemplateColumns: "repeat(3, minmax(0, 100px))",
          }}
        >
          {imageSrc.map((com) => (
            <Image key={com} width={100} height={100} alt="company" src={com} />
          ))}
        </div>
      </div>
    </div>
  );
};

export default Header;
