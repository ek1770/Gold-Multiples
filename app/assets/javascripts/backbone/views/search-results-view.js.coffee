window.SearchResultsView = Backbone.View.extend(
  tagName: "div"
  className: "search-results-insert"

  initialize: ->
    @render()
    $(".global-main-container").html ""
    $(".global-main-container").append @$el

    
  render: ->
    @$el.html searchResultsTemplate()


)
