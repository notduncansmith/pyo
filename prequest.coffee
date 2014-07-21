q = require 'q'
request = require 'request'

prequest = (opts) ->
  def = q.defer()  
  request opts, (err, response, body) ->
    if err
      def.reject err
      return def.promise

    result = JSON.parse(body)
    
    if result.detail?
      def.reject result.detail
      return def.promise
    
    def.resolve {result: 'OK'}

  def.promise

module.exports = prequest