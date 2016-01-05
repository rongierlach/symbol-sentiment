express		= require 'express'

module.exports = (app) ->

  api = express.Router()

  app.use '/api', api

  
