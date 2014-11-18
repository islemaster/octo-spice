class OctoSpice

  constructor: (@outputFunction) ->

  begin: ->
    @outputFunction("oogaboogabooga")

module.exports = OctoSpice if module?
