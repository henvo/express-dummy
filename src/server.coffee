process.env.NODE_ENV = process.env.NODE_ENV || 'development'

app = require './config/express'
config = require './config/config'

app.listen config.port, (err) ->
  if err
    console.log err
  else
    console.log 'Server is listening on port ' + config.port

module.exports = app
