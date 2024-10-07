"use client";
import { useState } from "react";
import TicketSummary from "./TicketSummary";
import TripOverview from "./TripOverview";
import SolanaCheckout from "./SolanaCheckout";

interface IProps {
  open: boolean;
  handleClick: () => void;
}

const BookingDetails: React.FC<IProps> = ({ open, handleClick }) => {
  const [hasPaid, setHasPaid] = useState(false);
  const [openSolanaCheckout, setOpenSolanaCheckout] = useState(false);

  const gettingTicket = () => {
    setOpenSolanaCheckout(true);
  };

  const solanaCheckoutClick = () => {
    setOpenSolanaCheckout(false);
    setHasPaid(true);
    handleClick;
  };

  return (
    open && (
      <div className="overflow-y-auto">
        <TicketSummary handleClick={handleClick} hasPaid={hasPaid} />

        <TripOverview
          open={!hasPaid && !openSolanaCheckout}
          handleClick={gettingTicket}
        />
        <SolanaCheckout
          open={openSolanaCheckout}
          handleClick={solanaCheckoutClick}
        />
      </div>
    )
  );
};

export default BookingDetails;
