import CustomIcon from "@/components/CustomIcon";
import ImageLibrary from "@/components/shared/ImageLibrary";
import { data } from "./data";
import Button from "@/components/Button";

interface IProps {
  open: boolean;
  handleClick: () => void;
}

const DropOff: React.FC<IProps> = ({ open, handleClick }) => {
  return (
    open && (
      <div className="fixed overflow-y-auto max-h-80 bottom-0 w-full rounded-2xl bg-gray-50 px-8 pt-4 pb-28 z-10">
        <div className="flex w-full items-center mb-4">
          <div className="flex flex-1 items-center space-x-3">
            <CustomIcon
              icon={ImageLibrary.Map}
              classNames="h-[30px] w-[30px] flex items-center justify-center rounded-full bg-[#F5F5F5]"
            />
            <h4 className="text-xl"> Next Drop Off</h4>
          </div>

          <div className="flex space-x-1 py-2 px-4 border border-[#EFEDED] rounded-xl">
            <span>In 4 MINS</span>
            <CustomIcon icon={ImageLibrary.ClockIcon} />
          </div>
        </div>
        <div className="flex flex-col space-y-[10px]">
          {data.map((ride, i) => (
            <div
              className="flex items-center p-5 rounded-3xl shadow-xl shadow-[#0000000A] space-x-4"
              key={i}
            >
              <div>
                <h4 className="text-xl text-primary mb-1">₦{ride.price}</h4>
                <p className="text-charcoal">{ride.duration}</p>
              </div>
              <div className="flex-1">
                <p className="text-ash">
                  {i === 0 ? "Drop off soon" : "Next Stop"}
                </p>
                <h4 className="text-xl text-onyx mt-1">{ride.busStop}</h4>
              </div>
              <Button
                onClick={handleClick}
                icon={<CustomIcon icon={ImageLibrary.ArrowRight} />}
                classNames="bg-[#FAFAFA] h-[32px] w-[32px] rounded-xl flex justify-center items-center"
              />
            </div>
          ))}
        </div>
      </div>
    )
  );
};

export default DropOff;
