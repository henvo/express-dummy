mongoose = require 'mongoose'

UserSchema = mongoose.Schema
  'name':
    type: String
    required: true
  'mail':
    type: String
    required: true
  'birthday':
    type: Date

mongoose.model('User', UserSchema)
