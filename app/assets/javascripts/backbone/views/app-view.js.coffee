window.AppView = Backbone.View.extend(
  initialize: ->
    
    window.menuTemplate = JST["backbone/templates/menu-template"]
    window.loginTemplate = JST["backbone/templates/login-template"]
    window.dashboardTemplate = JST["backbone/templates/dashboard-template"]
    window.myProjectsTemplate = JST["backbone/templates/my-projects-template"]
    window.transactionSearchTemplate = JST["backbone/templates/transaction-search-template"]
    window.addTransactionTemplate = JST["backbone/templates/add-transaction-template"]

    window.newProjectTemplate = JST["backbone/templates/new-project-template"]
    window.projectDetailTemplate = JST["backbone/templates/project-detail-template"]

    window.singleTransactionTemplate = JST["backbone/templates/single-transaction-template"]
    window.searchResultsTemplate = JST["backbone/templates/search-results-template"]
    window.singleProjectTemplate = JST["backbone/templates/single-project-template"]


    window.techSector = new Transaction()

    $(".left-menu-container").html @el
    @$el.html menuTemplate
    new DashboardView()


    # Delete a certain row where trash icon is clicked
    # $("table").on "click", ".icon-trash", (e) ->
    #     $(this).closest("tr").remove()


    

    # techSector.fetch()

  # events:
  #   "click .dashboard-command": "dashboardCommand"
  #   "click .my-projects-command": "myProjectsCommand"
  #   "click .transaction-search-command": "transactionSearchCommand"
  #   "click .add-transaction-command": "addTransactionCommand"

  # dashboardCommand: ->
  #   $(".transaction-search-view").html ""
  #   $(".dashboard-view").html ""
  #   $(".my-projects-view").html ""
  #   $(".add-transaction-view").html ""
  #   $(".new-project-view").html ""
  #   $(".project-detail-view").html ""
  #   new DashboardView()

  # myProjectsCommand: ->
  #   $(".transaction-search-view").html ""
  #   $(".dashboard-view").html ""
  #   $(".my-projects-view").html ""
  #   $(".add-transaction-view").html ""
  #   $(".new-project-view").html ""
  #   $(".project-detail-view").html ""
  #   new MyProjectsView()

  # transactionSearchCommand: ->
  #   $(".dashboard-view").html ""
  #   $(".transaction-search-view").html ""
  #   $(".my-projects-view").html ""
  #   $(".add-transaction-view").html ""
  #   $(".new-project-view").html ""
  #   $(".project-detail-view").html ""
  #   new TransactionSearchView()

  # addTransactionCommand: ->
  #   $(".dashboard-view").html ""
  #   $(".transaction-search-view").html ""
  #   $(".my-projects-view").html ""
  #   $(".add-transaction-view").html ""
  #   $(".new-project-view").html ""
  #   $(".project-detail-view").html ""
  #   new AddTransactionView()


)