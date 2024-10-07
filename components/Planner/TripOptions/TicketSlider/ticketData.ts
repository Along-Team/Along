interface TicketCardData {
  id: number;
  time: string;
  duration: string;
  seatsAvailable: number;
  departure: string;
  price: string;
}

const ticketCardData: TicketCardData[] = [
  {
    id: 0,
    time: "14:05",
    duration: "23 min",
    seatsAvailable: 4,
    departure: "Bus Stop A",
    price: "₦1,100",
  },
  {
    id: 1,
    time: "14:35",
    duration: "29 min",
    seatsAvailable: 2,
    departure: "Bus Stop B",
    price: "₦1,200",
  },
  {
    id: 2,
    time: "14:45",
    duration: "23 min",
    seatsAvailable: 1,
    departure: "Bus Stop C",
    price: "₦1,800",
  },
  {
    id: 3,
    time: "15:05",
    duration: "23 min",
    seatsAvailable: 4,
    departure: "Bus Stop D",
    price: "₦1,600",
  },
  {
    id: 4,
    time: "15:25",
    duration: "23 min",
    seatsAvailable: 4,
    departure: "Bus Stop E",
    price: "₦1,300",
  },
];

export default ticketCardData;
