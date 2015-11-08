mongoose = require 'mongoose'

UserSchema = mongoose.Schema
  'name':
    type: String
    required: true
    unique: true
    index: true
  'mail':
    type: String
    required: true
    unique: true
    index: true
  'birthday':
    type: Date

mongoose.model('User', UserSchema)
