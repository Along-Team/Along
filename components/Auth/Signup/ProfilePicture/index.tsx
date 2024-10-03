"use client";
import { useAppDispatch } from "@/redux/store";
import { updateFormData } from "@/redux/auth/form";
import Button from "@/components/Button";
import { Icon } from "@iconify/react";
import { toast } from "react-toastify";

interface Props {
  moveToNextTab: () => void;
}

const ProfilePicture: React.FC<Props> = ({ moveToNextTab }) => {
  const dispatch = useAppDispatch();
 
  const handleCaptureImage = (image: string) => {
    console.log("Captured image:", image);
    // Dispatch the captured image to the global state
    dispatch(updateFormData({ photo: image }));
    toast.success("Profile picture uploaded successfully!"); // Toast notification
  };

  const hasUploadedImage = false;

  return (
    <div className="flex-1 flex flex-col">
      <div className=" px-8 flex flex-col items-center min-h-96 pb-10 shadow-sm shadow-grey">
        {/* display image */}
        <div className="h-72 w-72 flex flex-col justify-center items-center rounded-full border-4 border-secondary">
          {!hasUploadedImage ? (
            <span className="h-64 w-64 flex flex-col justify-center items-center rounded-full text-dark text-4xl bg-[#F5F5F5]">
              <Icon icon="clarity:image-line" />
            </span>
          ) : (
            // the user image
            <span></span>
          )}
        </div>

        <div className="mt-6 flex justify-center space-x-4">
          <Button
           onClick={() => handleCaptureImage("dummyImageString")}//BE needs to provide an endpoint for image uploads
            classNames="w-auto"
            icon={<Icon icon="akar-icons:camera" />}
          />
          <Button
            label="Select Image"
            classNames="bg-white w-auto text-dark border border-dark"
            onClick={() => handleCaptureImage("dummyImageString")}
          />
        </div>
      </div>

      <div className="p-8 flex justify-center space-x-4">
        <Button
          label="Skip"
          onClick={moveToNextTab}
          classNames="bg-white text-dark border border-[#EFEDED]"
        />
        <Button label="Next" onClick={moveToNextTab} />
      </div>
    </div>
  );
};

export default ProfilePicture;
