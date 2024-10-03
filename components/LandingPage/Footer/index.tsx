import Image from "next/image";
import { biildLinks, otherLinks, resourcesLinks } from "./data";
import ImageLibrary from "@/components/shared/ImageLibrary";

const Footer: React.FC = () => {
  const currentYear = new Date().getFullYear();

  return (
    <footer className="w-full flex flex-col gap-5 text-sm p-10 md:p-20 lg:p-24">
      <div className="flex flex-col md:flex-row">
        <div className="basis-1/2">
          <Image
            src={ImageLibrary.AppLogoWithText}
            height={40}
            width={205}
            alt="logo"
            className="mb-6"
          />
          <div className="hidden md:block">
            <h4 className="text-sm font-bold mb-2 text-midnight">Biild Ltd</h4>
            <p className="text-sm text-darkGray">Learn More</p>
          </div>
        </div>

        <div className="flex flex-col md:flex-row basis-1/2 md:justify-evenly">
          <div className="mb-8 md:mb-0">
            <h4 className="text-sm font-bold mb-4 text-midnight">Along App</h4>
            <ul>
              {biildLinks.map((link) => (
                <li className="text-sm mb-1 text-darkGray" key={link.text}>
                  <a href={link.link}>{link.text}</a>
                </li>
              ))}
            </ul>
          </div>
          <div className="mb-4">
            <h4 className="text-sm font-bold mb-4 text-midnight">Resources</h4>
            <ul>
              {resourcesLinks.map((link) => (
                <li className="text-sm mb-1 text-darkGray" key={link.text}>
                  <a href={link.link}>{link.text}</a>
                </li>
              ))}
            </ul>
          </div>
        </div>
      </div>

      <div className="border-t border-dashed pt-8 md:pt-10 border-gray-400">
        <div className="flex flex-col md:flex-row md:justify-between text-center items-center">
          <p className="text-xs text-gray-400 mb-4">
            &copy; {currentYear} - Along App | Biild Ltd
          </p>
          <ul className="flex space-x-4">
            {otherLinks.map((link) => (
              <li className="text-sm text-darkGray" key={link.text}>
                <a href={link.link}>{link.text}</a>
              </li>
            ))}
          </ul>
        </div>
        <p className="text-xs text-gray-400 mt-4">
          Important Information: Along strives to provide accurate and
          up-to-date information, but cannot guarantee its absolute accuracy or
          reliability. By using Along, you agree to our Privacy Policy, which
          outlines how we collect, use, and protect your personal information.
          We also use cookies and similar technologies for enhancing your
          experience, analytics, and targeted advertising. Please review our
          Privacy Policy and Cookie Policy for more details.
        </p>
      </div>
    </footer>
  );
};

export default Footer;
