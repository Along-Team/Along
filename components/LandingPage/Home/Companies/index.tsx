"use client";

import Image from "next/image";
import { otherAffiliates, topAffiliates } from "./data";

const Companies: React.FC = () => {
  return (
    <div className="p-10 md:p-20 lg:p-24 w-full">
      <div className="w-full bg-customAlabaster p-10 md:py-12 md:px-12 rounded-3xl">
        <h4 className="text-midnight text-xl lg:text-2xl font-semibold mb-8 text-center">
          Companies Affiliated*
        </h4>

        <div className="grid md:grid-cols-2 md:gap-4">
          <div
            className="grid items-center justify-center md:justify-end gap-4"
            style={{
              gridTemplateColumns: "repeat(2, minmax(0, 100px))",
            }}
          >
            {topAffiliates.map((com) => (
              <Image
                key={com}
                width={100}
                height={100}
                alt="company"
                src={com}
              />
            ))}
          </div>
          <div
            className="hidden md:grid items-center gap-4"
            style={{
              gridTemplateColumns: "repeat(3, minmax(0, 100px))",
            }}
          >
            {otherAffiliates.map((com) => (
              <Image
                key={com}
                width={100}
                height={100}
                alt="company"
                src={com}
              />
            ))}
          </div>
        </div>
      </div>
    </div>
  );
};

export default Companies;
