import type { Metadata } from "next";
import { GlobalProvider } from "@/redux/provider";
import { ToastContainer } from "react-toastify";
import "react-toastify/dist/ReactToastify.css";

export const metadata: Metadata = {
  title: "Along",
  description: "Plan your next trip",
};

export default async function MarketingLayout({
  children,
}: Readonly<{ children: React.ReactNode }>) {
  return (
    <main className="flex flex-col min-h-screen items-center">
      <GlobalProvider>
        <ToastContainer />
        <div className="w-full h-full text-sm md:text-base flex">
          {children}
        </div>
      </GlobalProvider>
    </main>
  );
}
