class CreateTransactions < ActiveRecord::Migration
  def change
    create_table :transactions do |t|
      t.date :announcement_date
      t.date :closing_date
      t.string :acquirer
      t.string :target
      t.float :equity_value
      t.float :firm_value
      t.float :percent_acquired
      t.float :cash_mix
      t.float :stock_mix
      t.float :fv_ltm_revenue
      t.float :fv_ltm_ebitda
      t.float :fv_ltm_ebit
      t.float :price_to_earnings
      t.float :unaffected_premium
      t.float :shares_outstanding
      t.float :fully_diluted_shares_outstanding
      t.float :price_paid_per_share
      t.float :unaffected_share_price
      t.string :status
      t.float :ltm_revenue
      t.float :ltm_ebitda
      t.float :ltm_ebit
      t.string :sector
      t.string :sub_sector
      t.text :target_description
      t.text :acquirer_description
      t.text :notes
      t.float :total_debt
      t.float :short_term_debt
      t.float :long_term_debt
      t.float :cash
      t.float :cash_equivalents
      t.float :net_debt
      t.float :minority_interest
      t.float :preferred_shares
      t.float :stock_options_outstanding_tranche_1
      t.float :stock_options_outstanding_tranche2
      t.float :stock_options_outstanding_tranche3
      t.float :stock_options_outstanding_tranche4
      t.float :stock_options_outstanding_tranche5
      t.float :stock_options_outstanding_tranche6
      t.float :stock_options_outstanding_tranche7
      t.float :stock_options_outstanding_tranche8
      t.float :stock_options_outstanding_tranche9
      t.float :stock_options_outstanding_tranche10
      t.float :stock_options_excercise_price_tranche1
      t.float :stock_options_excercise_price_tranche2
      t.float :stock_options_excercise_price_tranche3
      t.float :stock_options_excercise_price_tranche4
      t.float :stock_options_excercise_price_tranche5
      t.float :stock_options_excercise_price_tranche6
      t.float :stock_options_excercise_price_tranche7
      t.float :stock_options_excercise_price_tranche8
      t.float :stock_options_excercise_price_tranche9
      t.float :stock_options_excercise_price_tranche10
      t.float :ltm_earnings
      t.float :ltm_earnings_per_share
      t.string :stock_options_outstanding_itm
      t.string :stock_options_outstanding_itm_average_excercise_price

      t.timestamps
    end
  end
end
