import TicketSlider from "./TicketSlider";

interface IProps {
  open: boolean;
  handleClick: () => void;
}

const TripOptions: React.FC<IProps> = ({ open, handleClick }) => {
  return (
    open && (
      <div className="fixed bottom-0 w-full rounded-2xl bg-gray-50 px-8 pt-4 pb-28">
        <div className="text-center mb-4">
          <h4>Select Vehicle & Ticket</h4>
        </div>
        <TicketSlider handleClick={handleClick} />
      </div>
    )
  );
};

export default TripOptions;
