import ImageLibrary from "@/components/shared/ImageLibrary";
import Image from "next/image";
import navLinks from "./navlinks";

interface IProps {
  closeNav: () => void;
  isOpen: boolean;
}

const NavMenu: React.FC<IProps> = ({ closeNav, isOpen }) => {
  return (
    <div
      className={`absolute top-0 right-0 bg-black z-50 bg-opacity-20 h-screen w-full transition-transform duration-700 ease-in-out ${
        isOpen ? "translate-x-0" : "translate-x-full"
      }`}
    >
      <div className="w-3/4 ml-auto h-full bg-white flex flex-col overflow-y-auto">
        <div className="flex items-center justify-end gap-4 py-3 px-4">
          <div className="w-9 relative bg-midnight h-9 rounded-xl flex justify-center items-center">
            <Image
              src={ImageLibrary.Bell}
              width={25}
              height={25}
              alt="Along logo"
            />
            <div className="bg-primary absolute -top-1 -right-1 border-2 border-white h-4 w-4 rounded-full"></div>
          </div>
          <div className="w-9">
            <Image
              src={ImageLibrary.ProfilePicture}
              width={35}
              height={35}
              alt="Along logo"
            />
          </div>
        </div>

        <div className="bg-customGray shadow-md px-2 pt-1">
          <button onClick={closeNav} className="w-8">
            <Image
              src={ImageLibrary.ToggleNavIcon}
              width={30}
              height={30}
              alt="toggle nav"
            />
          </button>
        </div>

        {navLinks.map((lk) => (
          <div key={lk.color} className="p-4 border-b-2 mr-2">
            <div className={`${lk.color} w-6 h-1 mb-2 rounded-md`}> </div>
            <a href={lk.href}>
              <h4 className="mb-2">{lk.name}</h4>
              <span className="text-xs text-deepTeal">{lk.subtitle}</span>
            </a>
          </div>
        ))}
        <button className="flex space-x-2 items-center p-4 bg-customGray shadow-md w-full">
          <span className="text-xs text-black">Learn More</span>
          <Image
            src={ImageLibrary.ShowMore}
            width={15}
            height={15}
            alt="Learn more about along"
          />
        </button>

        <div
          className="w-full p-8 bg-no-repeat bg-cover bg-center bg-opacity-25"
          style={{
            backgroundImage: `
            linear-gradient(to right, rgba(255,255,255,0.3) 60%, rgba(255,255,255,0.4) 80%), 
            url(/images/denmark.svg)`,
          }}
        >
          <Image
            src={ImageLibrary.AppLogoWithText}
            width={180}
            height={70}
            alt="Along app logo"
          />
          <h2 className="text-[#292A30] text-xl mt-4">
            The Most Efficient Urban Mobility App in Abuja, Nigeria
          </h2>
        </div>

        <div className="text-center text-xs p-8 border-b-2">
          <p>On the go? Add Along to your phone</p>
          <div className="flex justify-center items-center gap-2 mt-3">
            <a href="/#" target="_blank">
              <Image
                src={ImageLibrary.AppStoreBgWhite}
                width={100}
                height={50}
                alt="Along app logo"
              />
            </a>
            <a href="/#" target="_blank">
              <Image
                src={ImageLibrary.GooglePlayBgWhite}
                width={100}
                height={50}
                alt="Along app logo"
              />
            </a>
          </div>
        </div>

        <div className="flex space-x-2 w-full p-5">
          <a href="/#" className="text-gunmetal text-xs">
            Terms of Use
          </a>
          <a href="/#" className="text-gunmetal text-xs">
            Privacy Policy
          </a>
          <a href="/#" className="text-gunmetal text-xs">
            Contact Us
          </a>
        </div>
      </div>
    </div>
  );
};

export default NavMenu;
