request = require './prequest'
qs = require 'querystring'

class Api
  constructor: (key) ->
    @key = key
    @base = 'http://api.justyo.co'

  subscribers: ->
    @get '/subscribers'

  yoOne: (username) ->
    @post '/yo', {username: username}

  yoAll: ->
    @post '/yoall', {}

  route: (path) -> @base + path

  get: (path) ->
    url = "#{@route(path)}/?api_token=#{@key}"
    request url

  post: (path, data) ->
    data.api_token = @key
    opts =
      url: @route(path) + '/'
      method: 'POST'
      form: qs.stringify data
    request opts

module.exports = Api