window.DashboardView = window.TableView.extend(
  tagName: "div"
  className: "dashboard-view-insert"

  initialize: ->
    $(".global-main-container").html ""
    $(".global-main-container").append @$el
    @render()

  render: ->
    @$el.html dashboardTemplate()
    console.log 'test123'

    new SingleTransactionView
    new SingleTransactionView
    new SingleTransactionView
    new SingleTransactionView

)
