require './src/meshblu-auth-express'

module.exports = ->
  meshbluAuthExpress = new MeshbluAuthExpress

  middleware = (request, response, next) ->
    meshbluAuthExpress.getFromAnywhere request
    next()

  middleware