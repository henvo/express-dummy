express = require 'express'
router = express.Router()
users = require '../controllers/users_controller.js'

router.get '/', users.list
      .get '/:user_id', users.read
      .post '/', users.create
      .put '/:user_id', users.update
      .delete '/:user_id', users.delete

module.exports = router
