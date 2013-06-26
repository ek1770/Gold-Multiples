#= require_self
#= require_tree ./templates
#= require_tree ./models
#= require_tree ./collections
#= require_tree ./views
#= require_tree ./routers

window.TxnMultiples =
  Models: {}
  Collections: {}
  Routers: {}
  Views: {}

$(document).ready ->
  new AppView()