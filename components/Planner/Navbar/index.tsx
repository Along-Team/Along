"use client";

import ImageLibrary from "@/components/shared/ImageLibrary";
import Image from "next/image";
import { useState } from "react";
import NavMenu from "./NavMenu";

const Navbar = () => {
  const [isOpen, setIsOpen] = useState(false);
  const openMenu = () => setIsOpen(true);
  const closeMenu = () => setIsOpen(false);

  return (
    <>
      <nav className="w-full fixed left-0 top-0 z-50">
        <section
          className={`w-full mx-auto flex items-center justify-between py-4 px-4 bg-white shadow-md`}
        >
          <div className="w-36">
            <Image
              src={ImageLibrary.AppLogoWithText}
              width={138}
              height={30}
              alt="Along logo"
            />
          </div>

          <button onClick={openMenu} className="w-5">
            <Image
              src={ImageLibrary.HamburgerMenu}
              width={20}
              height={20}
              alt="Hamburger"
            />
          </button>
        </section>

        {/* menu */}
        <NavMenu closeNav={closeMenu} isOpen={isOpen} />
      </nav>
    </>
  );
};

export default Navbar;
