express = require 'express'

app = express()

routes = require '../app/routes'
routes(app)

module.exports = app
