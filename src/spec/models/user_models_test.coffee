should = require 'should'
mongoose = require 'mongoose'
User = mongoose.model('User')

describe 'User Model Test', ->

  after (done) ->
    User.remove {}, (err) ->
      done() unless err

  it 'should save user to db', (done) ->
    user1 = new User
      name: 'Dummy'
      mail: 'dummy@example.org'
    user1.save (err, doc) ->
      should.not.exist(err)
      should(doc).be.exactly(user1)
      done()

  it 'should not save user with same email or name', (done) ->
    user2 = new User
      name: 'Dummy'
      mail: 'dummy@example.org'
    user2.save (err, doc) ->
      should.exist(err)
      done()
