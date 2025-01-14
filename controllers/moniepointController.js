const axios = require("axios");
const Moniepay = require("../models/moniepointModel");
const AppError = require("../utils/appError");
const catchAsync = require("./../utils/catchAsync");

exports.createWallet = catchAsync(async (req, res, next) => {
  // Send POST request to the external API
  const externalApiResponse = await axios.post(
    "https://sandbox.monnify.com/api/v1/disbursements/wallet",
    req.body
  );

  // Save the response in the database
  const moniepay = await Moniepay.create({
    apiResponse: externalApiResponse.data,
  });
  // const moniepay = await Moniepay.create(req.body);

  res.status(201).json({
    status: "success",
    data: {
      data: moniepay,
    },
  });
});

exports.getWalletBalance = catchAsync(async (req, res, next) => {
  // Send GET request to the external API
  const externalApiResponse = await axios.get(
    "https://sandbox.monnify.com/api/v1/disbursements/wallet",
    req.params
  );
});

exports.getAllWallet = catchAsync(async (req, res, next) => {
  // Send GET request to the external API to fetch all wallets
  const apiUrl = "https://sandbox.monnify.com/api/v1/disbursements/wallet";

  const response = await axios.get(apiUrl);

  // Assuming the data you want to send is in response.data
  const walletData = response.data;

  // Process the data if needed

  // Send the data as the response
  res.status(200).json(walletData);
});
