window.SingleTransactionView = Backbone.View.extend(
  tagName: "tr"
  className: "single-transaction-insert"

  initialize: ->
    $(".insert-table-information").append @$el
    @render()

    
  render: ->
    @$el.html singleTransactionTemplate()
)
