import ImageLibrary from "@/components/shared/ImageLibrary";
import Image from "next/image";

interface IProps {}

const DriverInfo: React.FC<IProps> = ({}) => {
  return (
    <div className="bg-white mt-4 flex justify-between rounded-2xl shadow-sm py-4 px-6">
      <div>
        <h4 className="text-xl">Femi Olatunde</h4>
        <div className="flex items-center my-1">
          <span className="text-sm text-gray-500 opacity-40 mr-2">4.3</span>
          {Array(4)
            .fill("")
            .map((_, index) => (
              <div key={index} className="h-[18px] w-[18px]">
                <Image
                  src={ImageLibrary.Star}
                  height={30}
                  width={30}
                  alt="Star rating"
                />
              </div>
            ))}
          <div className="h-[18px] w-[18px]">
            <Image
              src={ImageLibrary.QuarterFilledStar}
              height={30}
              width={30}
              alt="Quarter Filled Star rating"
            />
          </div>
        </div>
        <p className="text-xs text-gray-500">259 people rated</p>
      </div>

      <div className="p-0.5 h-20 w-20 border-2 rounded-full border-primary">
        <Image
          src={ImageLibrary.DriverPicture}
          width={80}
          height={80}
          alt="Driver profile picture"
        />
      </div>
    </div>
  );
};

export default DriverInfo;
