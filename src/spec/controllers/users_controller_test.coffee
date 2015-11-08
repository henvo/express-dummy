should = require 'should'
request = require 'supertest'
app = require '../../server.js'

describe 'User Controller Test', ->
  it 'should get an array of users', (done) ->
    request app
      .get '/users'
      .expect 200
      .end (err, res)->
        should(res.body).be.an.Array()
        done()
