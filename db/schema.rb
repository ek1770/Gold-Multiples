# encoding: UTF-8
# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20130626183330) do

  create_table "projects", :force => true do |t|
    t.string   "name"
    t.string   "sector"
    t.string   "sub_sector"
    t.date     "date_created"
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
  end

  create_table "transactions", :force => true do |t|
    t.date     "announcement_date"
    t.date     "closing_date"
    t.string   "acquirer"
    t.string   "target"
    t.float    "equity_value"
    t.float    "firm_value"
    t.float    "percent_acquired"
    t.float    "cash_mix"
    t.float    "stock_mix"
    t.float    "fv_ltm_revenue"
    t.float    "fv_ltm_ebitda"
    t.float    "fv_ltm_ebit"
    t.float    "price_to_earnings"
    t.float    "unaffected_premium"
    t.float    "shares_outstanding"
    t.float    "fully_diluted_shares_outstanding"
    t.float    "price_paid_per_share"
    t.float    "unaffected_share_price"
    t.string   "status"
    t.float    "ltm_revenue"
    t.float    "ltm_ebitda"
    t.float    "ltm_ebit"
    t.string   "sector"
    t.string   "sub_sector"
    t.text     "target_description"
    t.text     "acquirer_description"
    t.text     "notes"
    t.float    "total_debt"
    t.float    "short_term_debt"
    t.float    "long_term_debt"
    t.float    "cash"
    t.float    "cash_equivalents"
    t.float    "net_debt"
    t.float    "minority_interest"
    t.float    "preferred_shares"
    t.float    "stock_options_outstanding_tranche_1"
    t.float    "stock_options_outstanding_tranche2"
    t.float    "stock_options_outstanding_tranche3"
    t.float    "stock_options_outstanding_tranche4"
    t.float    "stock_options_outstanding_tranche5"
    t.float    "stock_options_outstanding_tranche6"
    t.float    "stock_options_outstanding_tranche7"
    t.float    "stock_options_outstanding_tranche8"
    t.float    "stock_options_outstanding_tranche9"
    t.float    "stock_options_outstanding_tranche10"
    t.float    "stock_options_excercise_price_tranche1"
    t.float    "stock_options_excercise_price_tranche2"
    t.float    "stock_options_excercise_price_tranche3"
    t.float    "stock_options_excercise_price_tranche4"
    t.float    "stock_options_excercise_price_tranche5"
    t.float    "stock_options_excercise_price_tranche6"
    t.float    "stock_options_excercise_price_tranche7"
    t.float    "stock_options_excercise_price_tranche8"
    t.float    "stock_options_excercise_price_tranche9"
    t.float    "stock_options_excercise_price_tranche10"
    t.float    "ltm_earnings"
    t.float    "ltm_earnings_per_share"
    t.string   "stock_options_outstanding_itm"
    t.string   "stock_options_outstanding_itm_average_excercise_price"
    t.datetime "created_at",                                            :null => false
    t.datetime "updated_at",                                            :null => false
  end

  create_table "users", :force => true do |t|
    t.string   "email",                  :default => "", :null => false
    t.string   "encrypted_password",     :default => "", :null => false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          :default => 0
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                             :null => false
    t.datetime "updated_at",                             :null => false
    t.string   "name"
  end

  add_index "users", ["email"], :name => "index_users_on_email", :unique => true
  add_index "users", ["reset_password_token"], :name => "index_users_on_reset_password_token", :unique => true

end
