interface NavLink {
  name: string;
  subtitle: string;
  href: string;
  color: string;
}

const navLinks: NavLink[] = [
  {
    name: "About Along",
    subtitle: "Mobility as a Service products for Cities & Transit",
    href: "/#",
    color: "bg-fire",
  },
  {
    name: "Along Ads",
    subtitle: "Advertize on Our App",
    href: "/#",
    color: "bg-tangerine",
  },
  {
    name: "News & Press",
    subtitle: "In the News, Press Releases, Case Studies",
    href: "/#",
    color: "bg-emerald",
  },
  {
    name: "Community",
    subtitle: "Mapping the World of Transportation Together",
    href: "/#",
    color: "bg-vividOrange",
  },
];

export default navLinks;
