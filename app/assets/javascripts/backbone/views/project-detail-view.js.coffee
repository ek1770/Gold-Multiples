window.ProjectDetailView = Backbone.View.extend(
  tagName: "div"
  className: "project-detail-view-insert"

  initialize: ->
    @render()
    $(".global-main-container").html ""
    $(".global-main-container").append @$el

  render: ->
    @$el.html projectDetailTemplate()

  events:
    "click .transaction-search-command": "transactionSearchCommand"
    # "click .my-projects-command": "myProjectsCommand"
    # "click .transaction-search-command": "transactionSearchCommand"
    # "click .add-transaction-command": "addTransactionCommand"

  transactionSearchCommand: ->
    $(".dashboard-view").html ""
    $(".transaction-search-view").html ""
    $(".my-projects-view").html ""
    $(".add-transaction-view").html ""
    $(".new-project-view").html ""
    $(".project-detail-view").html ""
    new TransactionSearchView() 
)
