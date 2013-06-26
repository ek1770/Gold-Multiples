# A basic TableView for other views to extend

window.TableView = Backbone.View.extend(

  events:
    'click .icon-trash': 'deleteRow'

  # Delete a certain row where trash icon is clicked
  deleteRow: (event) ->
    $(event.target).closest("tr").remove()
    console.log("deleted row!")
)

# Overwrite the TableView extend method to merge
# events from both TableView and the contructor extending it.
TableView.extend = (child) ->
  view = Backbone.View.extend.apply(this, arguments)
  view.prototype.events = _.extend({}, this.prototype.events, child.events)
  view
