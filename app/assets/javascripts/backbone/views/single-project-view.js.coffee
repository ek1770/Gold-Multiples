window.SingleProjectView = Backbone.View.extend(
  tagName: "div"
  className: "single-project-insert"

  initialize: ->
    @render()
    $(".insert-project-information").append @$el
    

    
  render: ->
    @$el.html singleProjectTemplate()
    console.log('Adding projects')
)
