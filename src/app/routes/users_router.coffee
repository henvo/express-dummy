express = require 'express'
router = express.Router()
users = require '../controllers/users_controller.js'

router.get '/', users.index

module.exports = router
