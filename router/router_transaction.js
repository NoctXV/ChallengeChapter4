const router = require("express").Router()
const transaction = require("../controller/transaction")

router.post('/transactions', transaction.create)
router.get('/transactions', transaction.getall)
router.get('/transactions/:transaction', transaction.detail)

module.exports = router;