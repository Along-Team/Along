import ImageLibrary from "@/components/shared/ImageLibrary";
import Image from "next/image";

interface Props {
  children: React.ReactNode;
  isRegAuth?: boolean;
}

const AuthWrapper: React.FC<Props> = ({ children, isRegAuth = false }) => {
  return (
    <div className="bg-white bg-[url('/images/mask_group.svg')] bg-no-repeat bg-contain sm:bg-cover bg-top w-full px-0 sm:px-10 md:px-14 sm:pt-10 md:pt-14 pb-10 sm:pb-24 md:pb-32 flex flex-col sm:min-h-screen">
      {isRegAuth && (
        <div className="hidden sm:block mb-8">
          <div className="sm:h-[40px] sm:w-[200px] md:h-[50px] md:w-[250px]">
            <Image
              src={ImageLibrary.AppLogoWithText}
              height={80}
              width={200}
              alt="Along Logo"
              className="w-full h-full"
            />
          </div>
        </div>
      )}
      <div className="w-full sm:max-w-lg md:max-w-xl mx-auto flex flex-1 sm:items-center">
        <div className="w-full sm:bg-white sm:shadow-md sm:shadow-[#0000000D] sm:rounded-3xl sm:pb-4 pt-24 sm:pt-8 md:pt-12 flex ">
          <div className="w-full flex flex-col">
            {!isRegAuth && (
              <div className="w-20 h-20 mx-auto">
                <Image
                  src={ImageLibrary.AppLogo}
                  height={70}
                  width={70}
                  className="mx-auto"
                  alt="Along Logo"
                />
              </div>
            )}
            {children}
          </div>
        </div>
      </div>
    </div>
  );
};

export default AuthWrapper;
