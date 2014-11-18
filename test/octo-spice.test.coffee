OctoSpice = require '../octo-spice.coffee'

getSensingOutputStream = =>
  sensingOutputStream =
    outputText: (text) =>
      @buffer = text
    getBuffer: =>
      @buffer

exports.OctoSpiceTest =

  'tests run': (test) ->
    test.equal(1, 1)
    test.done()

  'Game sets no output if not started': (test) ->
    stream = getSensingOutputStream()
    game = new OctoSpice(stream.outputText)
    test.equal(false, stream.getBuffer()?)
    test.done()

  'Game appends output to stream': (test) ->
    stream = getSensingOutputStream()
    game = new OctoSpice(stream.outputText)
    game.begin()
    test.ok(0 < stream.getBuffer().length)
    test.done()
