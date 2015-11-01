should = require 'should'
request = require 'supertest'
app = require '../../server.js'

describe 'User controller', ->
  it 'should get a list of users', (done) ->
    request app
      .get '/users'
      .expect 200, done
