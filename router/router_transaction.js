const router = require("express").Router()
const transactions = require("../controller/transaction")

router.post('/transactions', transactions.create)
router.get('/transactions', transactions.getall)
router.get('/transactions/:transaction', transactions.detail)

module.exports = router