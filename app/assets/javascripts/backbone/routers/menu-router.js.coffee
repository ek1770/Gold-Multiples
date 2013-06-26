MenuRouter = Backbone.Router.extend({
  
  initialize: ->
    
    # Delete a certain row where trash icon is clicked
    $("table").on "click", ".icon-trash", (e) ->
        $(this).closest("tr").remove()



  routes:
    ''          : 'dashboard'
    'myprojects'   : 'showMyProjects'
    'transactionsearch' : 'showTransactionSearch'
    'addtransaction' : 'showAddTransaction'
  
  dashboard: ->
    new DashboardView()
    console.log 'dashboard called from router'

  showMyProjects: ->
    new MyProjectsView()
    console.log 'MyProjects called from router'
  
  showTransactionSearch: -> 
    new TransactionSearchView()
    console.log "Txn search called from router"

  showAddTransaction: -> 
    new AddTransactionView()
    console.log "Txn view called from router"



});

# new instance of MenuRouter
menuRouter = new MenuRouter();

# Start Backbone.history - MUST do this
$ ->
  Backbone.history.start({});