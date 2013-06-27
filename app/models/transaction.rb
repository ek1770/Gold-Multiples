class Transaction < ActiveRecord::Base
  attr_accessible :acquirer, 
    :acquirer_description, 
    :announcement_date, 
    :cash, 
    :cash_equivalents, 
    :cash_mix, 
    :closing_date, 
    :equity_value, 
    :firm_value, 
    :fully_diluted_shares_outstanding, 
    :fv_ltm_ebit, 
    :fv_ltm_ebitda, 
    :fv_ltm_revenue, 
    :long_term_debt, 
    :ltm_earnings, 
    :ltm_earnings_per_share, 
    :ltm_ebit, 
    :ltm_ebitda, 
    :ltm_revenue, 
    :minority_interest, 
    :net_debt, 
    :notes, 
    :percent_acquired, 
    :preferred_shares, 
    :price_paid_per_share, 
    :price_to_earnings, 
    :sector, 
    :shares_outstanding, 
    :short_term_debt, 
    :status, 
    :stock_mix, 
    :stock_options_excercise_price_tranche1, 
    :stock_options_excercise_price_tranche10, 
    :stock_options_excercise_price_tranche2, 
    :stock_options_excercise_price_tranche3, 
    :stock_options_excercise_price_tranche4, 
    :stock_options_excercise_price_tranche5, 
    :stock_options_excercise_price_tranche6, 
    :stock_options_excercise_price_tranche7, 
    :stock_options_excercise_price_tranche8, 
    :stock_options_excercise_price_tranche9, 
    :stock_options_outstanding_itm, 
    :stock_options_outstanding_itm_average_excercise_price, 
    :stock_options_outstanding_tranche10, 
    :stock_options_outstanding_tranche2, 
    :stock_options_outstanding_tranche3, 
    :stock_options_outstanding_tranche4, 
    :stock_options_outstanding_tranche5, 
    :stock_options_outstanding_tranche6, 
    :stock_options_outstanding_tranche7, 
    :stock_options_outstanding_tranche8, 
    :stock_options_outstanding_tranche9, 
    :stock_options_outstanding_tranche_1, 
    :sub_sector, 
    :target, 
    :target_description, 
    :total_debt, 
    :unaffected_premium, 
    :unaffected_share_price
end
