import type { Metadata } from "next";
import { Inter } from "next/font/google";
import "./globals.css";
import "mapbox-gl/dist/mapbox-gl.css";

const inter = Inter({ subsets: ["latin"] });

export const metadata: Metadata = {
  title: "Along",
  description:
    "Along is a smart transit app that optimizes travel by using sensor data to track popular routes and rewards passengers with NFTs for each trip, enhancing both convenience and engagement.",
  keywords: [
    "transit app",
    "smart travel",
    "NFT rewards",
    "route optimization",
    "passenger tracking",
    "travel convenience",
    "Along app",
    "public transport",
    "sensor technology",
    "participatory development",
  ],
};

export default function RootLayout({
  children,
}: Readonly<{
  children: React.ReactNode;
}>) {
  return (
    <html lang="en">
      <body className={inter.className}>{children}</body>
    </html>
  );
}
