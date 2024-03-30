
const express = require("express")
const app = express()
const PORT = 8005

app.use(express.json())

const users = require("./router/router_users")
app.use('/api/v1', users)

const accounts = require("./router/router_account")
app.use('/api/v1', accounts)

const transactions = require("./router/router_transaction")
app.use('/api/v1', transactions)

app.listen(PORT, () => {
    console.log(`server running at port ${PORT}`)
});
