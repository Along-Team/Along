interface IProps {
  name: string;
  place_formatted: string;
  handleClick: () => void;
}

const AddressSuggestions: React.FC<IProps> = ({
  name,
  place_formatted,
  handleClick,
}) => {
  return (
    <li
      className={`p-2 cursor-pointer border-b border-charcoal`}
      onClick={handleClick}
    >
      <p className="font-semibold text-ash">{name}</p>
      <p className="text-[10px] mt-1 opacity-50">{place_formatted}</p>
    </li>
  );
};

export default AddressSuggestions;
