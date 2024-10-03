import AuthWrapper from "@/components/Auth/AuthWrapper";
import Signup from "@/components/Auth/Signup";

export default function RiderWelcome() {
  return (
    <AuthWrapper isRegAuth>
      <Signup isDriverComp />
    </AuthWrapper>
  );
}
