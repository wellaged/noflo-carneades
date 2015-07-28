noflo = require 'noflo'

exports.getComponent = ->
  c = new noflo.Component

  # Define a meaningful icon for component from http://fontawesome.io/icons/
  c.icon = 'exclamation'

  # Provide a description on component usage
  c.description = 'Carneades issue'

  c.inPorts.add 'position',
    datatype: 'boolean'

  c
