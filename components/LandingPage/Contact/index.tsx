import ContactForm from "./ContactForm";
import Header from "./Header";

const Contact = () => {
  return (
    <div className="px-10 py-16 md:py-24 bg-customAlabaster md:px-20 lg:px-24">
      <div className="grid grid-cols-1 md:grid-cols-2 gap-6 items-center">
        <Header />
        <ContactForm />
      </div>
    </div>
  );
};

export default Contact;
