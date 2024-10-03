const SpanWrapper = ({
  text,
  classNames = "bg-customAlabaster",
}: {
  text: string;
  classNames: string;
}) => {
  return (
    <span
      className={`rounded-xl py-1 px-3 text-xs font-semibold text-[#525252] ${classNames}`}
    >
      {text}
    </span>
  );
};

export default SpanWrapper;
