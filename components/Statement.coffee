noflo = require 'noflo'

exports.getComponent = ->
  c = new noflo.Component

  # Define a meaningful icon for component from http://fontawesome.io/icons/
  c.icon = 'exclamation'

  # Provide a description on component usage
  c.description = 'Argumentation graph statement'

  c.inPorts.add 'label',
    datatype: 'string'
    process: (event, payload) ->
      @description = payload

  c.inPorts.add 'value',
    datatype: 'boolean'
    process: (event, payload) ->
      c.outPorts.value.send payload

  c.outPorts.add 'value',
    datatype: 'boolean'

  c
