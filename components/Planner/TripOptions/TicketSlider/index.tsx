"use client";

import TicketCard from "../TicketCard";
import ticketCardData from "./ticketData";
import UseEmblaCarousel from "embla-carousel-react";

interface IProps {
  handleClick: () => void;
}

const TicketSlider: React.FC<IProps> = ({ handleClick }) => {
  const [emblaRef] = UseEmblaCarousel();

  return (
    <div className="embla" ref={emblaRef}>
      <div className="embla__container space-x-4">
        {ticketCardData.map((data) => (
          <TicketCard
            key={data.id}
            time={data.time}
            duration={data.duration}
            departure={data.departure}
            seatsAvailable={data.seatsAvailable}
            price={data.price}
            handleClick={handleClick}
          />
        ))}
      </div>
    </div>
  );
};

export default TicketSlider;
