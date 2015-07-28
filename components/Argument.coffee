noflo = require 'noflo'

exports.getComponent = ->
  c = new noflo.Component

  # Define a meaningful icon for component from http://fontawesome.io/icons/
  c.icon = 'exclamation'

  # Provide a description on component usage
  c.description = 'Carneades argument'

  c.inPorts.add 'scheme',
    datatype: 'string'

  c.inPorts.add 'premise',
    datatype: 'boolean'

  c.outPorts.add 'conclusion',
    datatype: 'boolean'

  c
