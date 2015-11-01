module.exports = (app) ->
  app.use '/users', require './users_router.js'
  return
