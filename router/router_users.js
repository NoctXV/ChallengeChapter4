const router = require("express").Router()
const users = require("../controller/users")

router.post('/users', users.create)
router.get('/users', users.getall)
router.get('/users/:id', users.detail)

module.exports = router