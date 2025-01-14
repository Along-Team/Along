const express = require("express");
const moniepointController = require("./../controllers/moniepointController");

const router = express.Router();

router.post("/createwallet", moniepointController.createWallet);
router.get("/allwallet", moniepointController.getAllWallet);
module.exports = router;
