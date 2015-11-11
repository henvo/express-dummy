User = require('mongoose').model('User')

module.exports =
  list: (req, res, next) ->
    User.find {}, (err, docs) ->
      res.render('users') unless err

  read: (req, res, next) ->
    User.findOne {}, (err, doc) ->
      res.render('users/detail') unless err

  update: (req, res, next) ->
    res.send('Users#update')

  delete: (req, res, next) ->
    res.send('Users#delete')

  create: (req, res, next) ->
    res.send('Users#create')
