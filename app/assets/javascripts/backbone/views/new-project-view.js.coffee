window.NewProjectView = window.TableView.extend(
  tagName: "div"
  className: "new-project-view-insert"

  initialize: ->
    @render()
    $(".global-main-container").html ""
    $(".global-main-container").append @$el


    $validation = false
    $("#fuelux-wizard").ace_wizard().on("change", (e, info) ->
    
    )

  render: ->
    @$el.html newProjectTemplate()



  events:
    "click .finish-new-project-command": "finishNewProjectCommand"
    # "click .my-projects-command": "myProjectsCommand"
    # "click .transaction-search-command": "transactionSearchCommand"
    # "click .add-transaction-command": "addTransactionCommand"

  finishNewProjectCommand: ->

    $(".new-project-view").html ""
    new MyProjectsView()

)