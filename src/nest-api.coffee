class NestApi

  username: null
  password: null
  session: {}

  constructor: (@username=null, @password=null) ->

  setUsername: (username) ->
    @username = username

  setPassword: (password) ->
    @password = password

  login: () ->
    return true


module.exports = NestApi
