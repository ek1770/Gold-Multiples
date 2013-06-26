window.LoginView = Backbone.View.extend(
  tagName: "div"
  className: "login-view-insert"

  initialize: ->
    @render()
    $(".global-main-container").html ""
    $(".global-main-container").append @$el

    
  render: ->
    @$el.html loginTemplate()
)
