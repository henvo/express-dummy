should = require 'should'
request = require 'supertest'
app = require '../../server.js'

describe 'User controller', ->
  it 'should get an array', (done) ->
    request app
      .get '/users'
      .expect 200
      .end (err, res)->
        should(res.body).be.an.Array()
        done()
