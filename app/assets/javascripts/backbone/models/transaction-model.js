// The Transaction model

Transaction = Backbone.Model.extend({
  defaults: {
    date: '',
    acquirer: '',
    target: '',
    equity_value: '',
    enterprise_value: '',
    percent_acquired: '',
    mix: '',
    ltm_revenue: '',
    ltm_ebitda: '',
    ltm_ebit: '',
    pe: '',
    unaffected_premium: '',
    status: '',
  },
  paramRoot: 'transaction',

});