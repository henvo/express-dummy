express = require 'express'

app = express()

app.set 'views', './app/views'
app.set 'view engine', 'jade'

routes = require '../app/routes'
routes app

module.exports = app
