import Image from "next/image";

interface IProps {
  classNames?: string;
  icon: string;
  height?: number;
  width?: number;
}

const CustomIcon: React.FC<IProps> = ({ classNames, icon, height, width }) => {
  return (
    <div className={classNames}>
      <div
        className={`${height ? "h-" + height : "h-5"} ${
          width ? "w-" + width : "w-5"
        }`}
      >
        <Image
          src={icon}
          height={height || 30}
          width={width || 30}
          alt="Map icon"
        />
      </div>
    </div>
  );
};

export default CustomIcon;
