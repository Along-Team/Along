import Button from "@/components/Button";
import ImageLibrary from "@/components/shared/ImageLibrary";
import { Icon } from "@iconify/react";
import Image from "next/image";

const NotificationPanel: React.FC = () => {
  return (
    <div className="absolute top-[-30px] left-[-40px] z-0">
      <div className="flex bg-white p-3 w-[260px] space-x-2 items-start rounded-2xl mb-2">
        <Image
          src={ImageLibrary.TicketIconOne}
          height={32}
          width={32}
          alt="ticket icon"
        />

        <div className="flex text-dark justify-between items-start">
          <div className="">
            <h4 className="text-sm font-bold mb-2 text-onyx">Route delayed</h4>
            <p className="text-xs text-charcoal">
              The route that starts from <strong>Bus Stop</strong> is delayed by
              5 minutes.
            </p>
          </div>
          <span className="text-xs text-charcoal">14:00</span>
        </div>
      </div>

      <div className="flex bg-white p-3 w-[260px] space-x-2 items-start rounded-2xl mb-4">
        <Image
          src={ImageLibrary.TicketIconTwo}
          height={32}
          width={32}
          alt="ticket icon"
        />

        <div className="flex justify-between text-dark items-start">
          <div className="">
            <h4 className="text-sm font-bold mb-2 text-onyx">
              Ticket purchased
            </h4>
            <p className="text-xs text-charcoal">
              Thank you for your purchase of an adult single ticket for - ₦1,100
            </p>
            <Button
              label="See Tickets"
              classNames="px-4 py-2 mt-4 rounded-2xl w-auto text-xs bg-dark text-white rounded-lg"
              endIcon={<Icon icon="ph:arrow-right-thin" />}
            />
          </div>
          <span className="text-xs text-charcoal">13:45</span>
        </div>
      </div>
    </div>
  );
};

export default NotificationPanel;
