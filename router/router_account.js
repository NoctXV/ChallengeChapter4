const router = require("express").Router()
const accounts = require("../controller/account")

router.post('/accounts', accounts.create)
router.get('/accounts', accounts.getall)
router.get('/accounts/:id', accounts.detail)

module.exports = router