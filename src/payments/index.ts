import { GeneratePayQrInputParams, VerifyPaymentInputParams } from "../types";

export class Payments {
  async generatePayQr({
    amount,
    label,
    message,
    memo,
    merchant_wallet,
  }: GeneratePayQrInputParams): Promise<any> {
    if (!amount || !label || !message || !memo || !merchant_wallet) {
      return new Promise((_, reject) => {
        reject("Invalid payment details");
      });
    } else {
      const url = await fetch(
        "https://project-along.onrender.com/v1/payments/generate-pay-qr",
        {
          method: "POST",
          headers: {
            "Content-Type": "application/json",
          },
          body: JSON.stringify({
            amount,
            label,
            message,
            memo,
            merchant_wallet,
          }),
        }
      ).then((res) => res.json());
      return new Promise((resolve) => {
        resolve("Payment QR generated");
      });
    }
  }

  async verifyPayment({
    amount,
    reference,
    merchant_wallet,
  }: VerifyPaymentInputParams): Promise<any> {
    if (!amount || !reference || !merchant_wallet) {
      return new Promise((reject) => {
        reject("Invalid payment details");
      });
    } else {
      const url = await fetch(
        "https://project-along.onrender.com/v1/payments/verify-payment",
        {
          method: "POST",
          headers: {
            "Content-Type": "application/json",
          },
          body: JSON.stringify({
            amount,
            reference,
            merchant_wallet,
          }),
        }
      ).then((res) => res.json());
      return new Promise((resolve) => {
        resolve("Payment verified");
      });
    }
  }
}
