import PwdForm from "./PwdForm";

const CreateNewPassword: React.FC = () => {
  return (
    <div className="flex-1 flex-col flex pt-8 pb-4">
      <div className="px-8">
        <h2 className="text-2xl text-center">Create Password</h2>
        <p className="text-dark mt-4 text-center text-sm">
          Create a new password for your account
        </p>
      </div>

      <PwdForm />
    </div>
  );
};

export default CreateNewPassword;
