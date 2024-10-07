import AuthWrapper from "@/components/Auth/AuthWrapper";
import CreateNewPassword from "@/components/Auth/CreateNewPwd";

export default function RiderWelcome() {
  return (
    <AuthWrapper>
      <CreateNewPassword />
    </AuthWrapper>
  );
}
