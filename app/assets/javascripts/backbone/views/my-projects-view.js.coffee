window.MyProjectsView = Backbone.View.extend(
  tagName: "div"
  className: "my-projects-view-insert"

  initialize: ->
    @render()
    $(".global-main-container").html ""
    $(".global-main-container").append @$el

  render: ->
    @$el.html myProjectsTemplate()

    new SingleProjectView
    new SingleProjectView
    new SingleProjectView
    new SingleProjectView
    new SingleProjectView
    new SingleProjectView


  events:
    "click .new-project-command": "newProjectCommand"
    "click .project-detail-command": "projectDetailCommand"

  newProjectCommand: ->
    $(".my-projects-view").html ""
    $(".new-project-view").html ""
    new NewProjectView()

  projectDetailCommand: ->
    $(".my-projects-view").html ""
    $(".new-project-view").html ""
    new ProjectDetailView()

)
