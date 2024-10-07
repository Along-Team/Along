import AppWrapper from "@/components/LandingPage/AppWrapper";
import {
  Benefits,
  BottomHeader,
  Companies,
  Earning,
  ExtraIncome,
  FAQs,
  Features,
  Heading,
  HowItWorks,
  StillGotQuestions,
} from "@/components/LandingPage/Home";

export default function HomePage() {
  return (
    <AppWrapper>
      <main className="flex min-h-screen flex-col items-center justify-between">
        <Heading />
        <Companies />
        <HowItWorks />
        <ExtraIncome />
        <Benefits />
        <Earning />
        <Features />
        <FAQs />
        <StillGotQuestions />
        <BottomHeader />
      </main>
    </AppWrapper>
  );
}
