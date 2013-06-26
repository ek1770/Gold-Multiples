// Transactions collection

Transactions = Backbone.Collection.extend({
  model: Transaction,
  url: "/transactions"
});