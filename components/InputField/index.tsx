import React, { FC } from "react";
import clsx from "clsx";
import dynamic from "next/dynamic";

// Dynamically import Iconify component
const Iconify = dynamic(() => import("@iconify/react").then((mod) => mod.Icon));

interface Props {
  label?: string;
  type?: string;
  handleShowPassword?: () => void;
  placeholder?: string;
  onChange?: React.ChangeEventHandler<HTMLInputElement>;
  value?: string | number;
  checked?: boolean;
  name?: string;
  selectOption?: string[] | number[];
  isTextArea?: boolean;
  isCheckbox?: boolean;
  checkboxLabel?: string;
  rows?: number;
  icon?: React.ReactNode;
  readOnly?: boolean;
  disabled?: boolean;
  onEnterPressed?: () => void;
  classNames?: string;
  isRequired?: boolean;
  onInputIconClick?: () => void;
  min?: string;
  max?: string;
  maxLength?: number;
  onBlur?: React.FocusEventHandler<
    HTMLInputElement | HTMLSelectElement | HTMLTextAreaElement
  >;
  onFocus?: React.FocusEventHandler<HTMLInputElement>;
  step?: any;
  error?: any;
}

const InputField: FC<Props> = ({
  label,
  handleShowPassword,
  type = "text",
  placeholder,
  onChange,
  value,
  name,
  checked,
  selectOption,
  isTextArea,
  rows = 3,
  icon,
  readOnly,
  disabled,
  onEnterPressed,
  classNames,
  isRequired,
  isCheckbox,
  checkboxLabel,
  onInputIconClick,
  min,
  max,
  maxLength,
  onBlur,
  step,
  error,
  onFocus,
}) => {
  return (
    <div className="space-y-1 w-full">
      {label && (
        <label className="block text-left text-sm font-medium text-dark">
          {label}{" "}
          {/* {isRequired && <span className="text-red-600 text-sm">*</span>} */}
        </label>
      )}
      <div className="flex relative items-center space-x-1 h-14">
        {icon && (
          <span
            onClick={onInputIconClick}
            className="cursor-pointer bg-[#FAFAFA] py-3 rounded-l-md px-4"
          >
            {icon}
          </span>
        )}

        {selectOption ? (
          <div className="relative inline-block w-full">
            <select
              className="input-field appearance-none z-10"
              onChange={onChange as any}
              value={value as number}
              name={name}
            >
              {selectOption.map((option) => (
                <option key={option} value={option}>
                  {typeof option === "number"
                    ? option
                    : option.charAt(0).toUpperCase() + option.slice(1)}{" "}
                  {typeof option === "number" && "seconds"}
                </option>
              ))}
            </select>
            <div className="pointer-events-none absolute inset-y-0 right-0 flex items-center pr-4 text-gray-700">
              <svg
                className="h-4 w-4 fill-current"
                xmlns="http://www.w3.org/2000/svg"
                viewBox="0 0 20 20"
              >
                <path d="M10 12l-8-8 1.5-1.5L10 9l6.5-6.5L18 4z" />
              </svg>
            </div>
          </div>
        ) : isTextArea ? (
          <textarea
            className={clsx(
              "input-field textarea-input-field placeholder-gray-500",
              classNames
            )}
            placeholder={placeholder}
            onChange={onChange as any}
            value={value}
            name={name}
            rows={rows}
          />
        ) : isCheckbox ? (
          // styling custom checkbox with checkbox_container in global.css
          <label
            htmlFor={name}
            className="text-sm md:text-base text-dark checkbox_container"
          >
            {checkboxLabel}
            <input
              className={readOnly ? "readOnly-input-field" : "input-field"}
              type="checkbox"
              onChange={onChange}
              checked={checked}
              name={name}
              id={name}
              value={value}
              required={isRequired}
            />

            <span className="checkbox_mark_icon"></span>
          </label>
        ) : (
          <input
            className={clsx(
              `${
                readOnly ? "readOnly-input-field" : "input-field"
              } bg-[#FAFAFA] text-dark py-2 px-4 rounded-l-none rounded-r-md w-full border-none outline-none`,
              classNames
            )}
            type={type}
            placeholder={placeholder}
            onChange={onChange}
            value={value}
            name={name}
            min={min}
            max={max}
            maxLength={maxLength}
            readOnly={readOnly || disabled}
            onBlur={onBlur}
            onFocus={onFocus}
            required={isRequired}
            step={step}
            onKeyDown={(e) => {
              if (onEnterPressed && e.key === "Enter") {
                e.preventDefault();
                onEnterPressed && onEnterPressed();
              }
            }}
          />
        )}

        {handleShowPassword && (
          <span className="absolute right-3">
            <button
              type="button"
              onClick={handleShowPassword}
              className=""
              title={type === "text" ? "Hide password" : "Show password"}
            >
              <Iconify
                icon={type === "password" ? "lucide:eye-off" : "lucide:eye"}
                className="text-dark"
              />
            </button>
          </span>
        )}
      </div>
      {error && (
        <p className="text-red-600 text-[10px] absolute -bottom-[15px]">
          {error}
        </p>
      )}
    </div>
  );
};

export default InputField;
