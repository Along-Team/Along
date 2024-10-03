import AuthWrapper from "@/components/Auth/AuthWrapper";
import SecurityCode from "@/components/Auth/SecurityCode";

export default function RiderWelcome() {
  return (
    <AuthWrapper>
      <SecurityCode />
    </AuthWrapper>
  );
}
