window.SingleProjectView = Backbone.View.extend(
  tagName: "div"
  className: "single-project-insert"

  initialize: ->
    $(".insert-project-information").append @$el
    @render()    

    
  render: ->
    @$el.html singleProjectTemplate()
    console.log('Adding projects')
)
