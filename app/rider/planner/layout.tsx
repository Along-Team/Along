import Footer from "@/components/Planner/Footer";
import Navbar from "@/components/Planner/Navbar";
import type { Metadata } from "next";

export const metadata: Metadata = {
  title: "Along",
  description: "Plan your next trip",
};

export default async function MarketingLayout({
  children,
}: Readonly<{ children: React.ReactNode }>) {
  return (
    <main className="flex flex-col w-screen h-screen">
      <Navbar />
      {children}
      <Footer />
    </main>
  );
}
