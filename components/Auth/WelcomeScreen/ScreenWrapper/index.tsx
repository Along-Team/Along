"use client";

const ScreenWrapper = ({
  children,
}: Readonly<{
  children: React.ReactNode;
  centerContent?: boolean;
}>) => {
  return (
    <div className="bg-secondary bg-[url('/images/denmark.svg')] bg-no-repeat bg-cover bg-left-bottom w-full px-6 sm:px-8 md:px-10 sm:pt-8 md:pt-10 pb-10 sm:pb-24 md:pb-32 flex flex-col min-h-screen">
      {children}
    </div>
  );
};

export default ScreenWrapper;
