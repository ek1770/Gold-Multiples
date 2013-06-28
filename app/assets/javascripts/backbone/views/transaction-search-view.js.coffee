window.TransactionSearchView = Backbone.View.extend(
  tagName: "div"
  className: "transaction-search-view-insert"

  events:
    "click .search-results-command": "searchResultsCommand"

  initialize: ->
    @render()
    $(".global-main-container").html ""
    $(".global-main-container").append @$el

    # now give it the tree data
    $('#tree1').ace_tree({
      dataSource: treeDataSource ,
      multiSelect:true,
      loadingHTML:'<div class="offset1"><i class="icon-refresh icon-spin blue"></i></div>',
      'open-icon' : 'icon-minus',
      'close-icon' : 'icon-plus',
      'selectable' : true,
      'selected-icon' : 'icon-ok',
      'unselected-icon' : 'icon-remove'
    });

    $(".date-picker").datepicker()

    $("#id-date-range-picker-1").daterangepicker()

  render: ->
    @$el.html transactionSearchTemplate()



  searchResultsCommand: ->
    new SearchResultsView() 

)
