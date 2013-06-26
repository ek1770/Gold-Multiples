window.AddTransactionView = Backbone.View.extend(
  tagName: "div"
  className: "add-transaction-view-insert"

  initialize: ->
    @render()
    $(".global-main-container").html ""
    $(".global-main-container").append @$el

  render: ->
    @$el.html addTransactionTemplate()
)
