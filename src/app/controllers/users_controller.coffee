module.exports =
  list: (req, res, next) ->
    res.json([])
  read: (req, res, next) ->
    res.send('Users#read')
  update: (req, res, next) ->
    res.send('Users#update')
  delete: (req, res, next) ->
    res.send('Users#delete')
  create: (req, res, next) ->
    res.send('Users#create')
