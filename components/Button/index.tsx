"use client";
import React from "react";
import Link from "next/link";
import { twMerge } from "tailwind-merge";
// import Spinner from "../Spinner";

interface ButtonProps {
  label?: string;
  isLoading?: boolean;
  onClick?: () => void;
  classNames?: string;
  link?: string;
  icon?: React.ReactNode;
  endIcon?: React.ReactNode;
  type?: "button" | "submit" | "reset";
  disabled?: boolean;
}

const Button: React.FC<ButtonProps> = ({
  label,
  isLoading = false,
  onClick,
  classNames,
  link,
  icon,
  endIcon,
  type = "button",
  disabled = false,
}) => {
  //   const content = isLoading ? <Spinner /> : label;
  const content = label;

  if (link) {
    return (
      <Link
        href={link}
        passHref
        className={twMerge(
          `w-full flex justify-center items-center gap-2 py-4 px-8 rounded-2xl bg-midnight text-white font-semibold text-center text-sm md:text-base `,
          classNames
        )}
        onClick={!disabled ? onClick : undefined}
      >
        {icon && <span className="">{icon}</span>}

        {content}

        {endIcon && <span className="">{endIcon}</span>}
      </Link>
    );
  }

  return (
    <button
      type={type}
      className={twMerge(
        `w-full flex justify-center items-center gap-2 py-3 px-6 rounded-2xl bg-midnight text-white font-semibold text-center text-sm md:text-base`,
        classNames
      )}
      onClick={!disabled ? onClick : undefined}
      disabled={disabled}
    >
      {icon && <span className="">{icon}</span>}

      {content}
      {endIcon && <span className="">{endIcon}</span>}
    </button>
  );
};

export default Button;
