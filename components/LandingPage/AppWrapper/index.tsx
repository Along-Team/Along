"use client";
import Navbar from "../Navbar";
import Footer from "../Footer";

import React, { ReactNode } from "react";

const AppWrapper = ({ children }: { children: ReactNode }) => {
  return (
    <main className="mx-auto flex flex-col min-h-screen">
      <Navbar />
      {/* pt to prevent content running into the navbar */}
      <div className="flex-grow pt-16 md:pt-20">{children}</div>
      <Footer />
    </main>
  );
};

export default AppWrapper;
