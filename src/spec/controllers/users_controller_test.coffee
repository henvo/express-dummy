should = require 'should'
request = require 'supertest'
app = require '../../server.js'

describe 'User controller', ->
  it 'should get an array of users', (done) ->
    request app
      .get '/users'
      .expect 200
      .end (err, res)->
        should(res.body).be.an.Array()
        done()
  it 'should get an user object', (done) ->
    request app
      .get '/users/1'
      .expect 200
      .end (err, res)->
        should(res.body).not.be.equal(null)
        done()
