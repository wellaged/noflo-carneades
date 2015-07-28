noflo = require 'noflo'

exports.getComponent = ->
  c = new noflo.Component

  # Define a meaningful icon for component from http://fontawesome.io/icons/
  c.icon = 'info'

  # Provide a description on component usage
  c.description = 'Argumentation graph description'

  c.inPorts.add 'title',
    datatype: 'string'

  c.inPorts.add 'source',
    datatype: 'string'

  c.inPorts.add 'note',
    datatype: 'string'

  c
