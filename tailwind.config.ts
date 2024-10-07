import type { Config } from "tailwindcss";

const config: Config = {
  content: [
    "./pages/**/*.{js,ts,jsx,tsx,mdx}",
    "./components/**/*.{js,ts,jsx,tsx,mdx}",
    "./app/**/*.{js,ts,jsx,tsx,mdx}",
  ],
  theme: {
    extend: {
      backgroundImage: {
        "gradient-radial": "radial-gradient(var(--tw-gradient-stops))",
        "gradient-conic":
          "conic-gradient(from 180deg at 50% 50%, var(--tw-gradient-stops))",
      },
      fontFamily: {
        poppins: ["Poppins", "sans-serif"],
      },
      colors: {
        primary: "#FF8811",
        secondary: "#FFCE48",
        charcoal: "#404040",
        midnight: "#1A1528",
        midnightBlue: "#1A2131",
        onyx: "#1F1F1F",
        ash: "#9D9D9D",
        emerald: "#1DB969",
        tangerine: "#FF6400",
        fire: "#F3471A",
        gold: "#FABF35",
        customGray: "#F8F7F7",
        vividOrange: "#F7A20C",
        deepTeal: "#001926",
        gunmetal: "#292A30",
        lightGray: "#f1f1f1",
        darkGray: "#737373",
        customAlabaster: "#F9F7F2",
        mist: "#E8EFF0",
        lightSilver: "#D4D4D4",
      },
    },
  },
  plugins: [],
};
export default config;
