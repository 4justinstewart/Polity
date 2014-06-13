window.Polity =
  Models: {}
  Collections: {}
  Views: {}
  Routers: {}
  initialize: ->
    alert('Hello from Backbone!')

window.App = window.Polity

$(document).ready ->
  Polity.initialize()
