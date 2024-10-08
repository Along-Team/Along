import { useState } from "react";
import Link from "next/link";
import Image from "next/image";
import links from "./data";
import Button from "@/components/Button";
import ImageLibrary from "@/components/shared/ImageLibrary";

const Navbar: React.FC = () => {
  const [isOpen, setIsOpen] = useState(false);

  const toggleMenu = () => {
    setIsOpen(!isOpen);
  };

  return (
    <nav className="p-4 bg-white shadow-sm fixed top-0 left-0 w-full z-50">
      <div className="container mx-auto flex justify-between md:justify-start items-center">
        <Link href="/">
          <Image
            src={ImageLibrary.AppLogoWithText}
            height={40}
            width={205}
            alt="logo"
          />
        </Link>

        <div className="md:hidden">
          <button onClick={toggleMenu} className="text-dark focus:outline-none">
            <svg
              className="w-6 h-6"
              fill="none"
              stroke="currentColor"
              viewBox="0 0 24 24"
              xmlns="http://www.w3.org/2000/svg"
            >
              <path
                strokeLinecap="round"
                strokeLinejoin="round"
                strokeWidth="2"
                d={isOpen ? "M6 18L18 6M6 6l12 12" : "M4 6h16M4 12h16M4 18h16"}
              ></path>
            </svg>
          </button>
        </div>

        <div className="hidden -ml-8 md:flex justify-between items-center w-full">
          <div className="md:flex items-center space-x-4">
            {links.map((link) => (
              <Link key={link.text} href={link.href} className="text-darkGray">
                {link.text}
              </Link>
            ))}
          </div>
          <div className="self-end">
            <Button  link="/rider/sign-up" label="Start Along Now" classNames="rounded-3xl" />
          </div>
        </div>
      </div>

      <div
        className={`text-center px-4 md:hidden ${isOpen ? "block" : "hidden"}`}
      >
        {links.map((link) => (
          <Link
            key={link.text}
            href={link.href}
            className="block px-4 py-2 text-darkGray"
          >
            {link.text}
          </Link>
        ))}
        {/* <div className="mt-4"></div> */}
        <Button link="/rider/sign-up" label="Get Started" classNames="rounded-3xl mt-4" />
      </div>
    </nav>
  );
};

export default Navbar;
