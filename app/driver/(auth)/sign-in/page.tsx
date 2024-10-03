import AuthWrapper from "@/components/Auth/AuthWrapper";
import Signin from "@/components/Auth/Signin";

export default function RiderWelcome() {
  return (
    <AuthWrapper>
      <Signin driverComponent />
    </AuthWrapper>
  );
}
