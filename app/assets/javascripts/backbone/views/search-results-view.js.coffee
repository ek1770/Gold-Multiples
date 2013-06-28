window.SearchResultsView = Backbone.View.extend(
  tagName: "div"
  className: "search-results-insert"

  initialize: ->
    @render()
    $(".global-main-container").html ""
    $(".global-main-container").append @$el

    
    # Each column in the table needs to be counted for below
    $ ->
      oTable1 = $("#table_report").dataTable(aoColumns: [
        bSortable: false,
        null,
        null,
        null,
        null,
        null,
        bSortable: false,
        null,
        null,
        null,
        null,
        null,
        null,
        null
      ])
      $("table th input:checkbox").on "click", ->
        that = this
        $(this).closest("table").find("tr > td:first-child input:checkbox").each ->
          @checked = that.checked
          $(this).closest("tr").toggleClass "selected"


      $("[data-rel=tooltip]").tooltip()

 


    
  render: ->
    @$el.html searchResultsTemplate()


)
