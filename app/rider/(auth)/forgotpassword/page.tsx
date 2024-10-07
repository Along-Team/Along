import AuthWrapper from "@/components/Auth/AuthWrapper";
import ResetPassword from "@/components/Auth/ResetPassword";

export default function RiderWelcome() {
  return (
    <AuthWrapper>
      <ResetPassword />
    </AuthWrapper>
  );
}
