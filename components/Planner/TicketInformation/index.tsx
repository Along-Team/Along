import CustomIcon from "@/components/CustomIcon";
import ImageLibrary from "@/components/shared/ImageLibrary";
import Image from "next/image";
import BoardingPass from "../BoardingPass";

interface IProps {
  open: boolean;
  handleClick: () => void;
  goBack: () => void;
}

const TicketInformation: React.FC<IProps> = ({ open, handleClick, goBack }) => {
  return (
    open && (
      <div className="fixed overflow-y-auto max-h-80 bottom-0 w-full rounded-2xl bg-gray-50 pb-28 z-10">
        <div className="pt-3 px-6 flex w-full items-center justify-between mb-5">
          <button onClick={goBack}>
            <CustomIcon
              icon={ImageLibrary.Exit}
              classNames="h-[30px] w-[30px] flex items-center justify-center rounded-full bg-white w-auto"
            />
          </button>
          <h4 className="text-xl">Ticket Information</h4>
          <button
            //  todo: instead of opening a new screen view more info about the ticket
            onClick={handleClick}
          >
            <CustomIcon
              icon={ImageLibrary.More}
              classNames="h-[30px] w-[30px] flex items-center justify-center rounded-full bg-transparent"
            />
          </button>
        </div>
        <div className="px-12">
          <div className="flex justify-between items-end mb-9">
            <h1 className="text-4xl text-onyx">1 Adult</h1>
            <p className="text-ash text-sm">Maria Philip</p>

            <div className="h-[45px] w-[45px] rounded-full">
              <Image
                src={ImageLibrary.UserAvatar}
                alt="user avatar"
                height={45}
                width={45}
                className="w-full  h-full"
              />
            </div>
          </div>

          <BoardingPass forDriver />
        </div>
      </div>
    )
  );
};

export default TicketInformation;
