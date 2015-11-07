mongoose = require 'mongoose'
config = require './config'

db = mongoose.connect config.db

require '../app/models/user_model'

module.exports = db
