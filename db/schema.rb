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

ActiveRecord::Schema.define(:version => 20110619143312) do

  create_table "journal_items", :force => true do |t|
    t.integer  "amount_credit"
    t.integer  "amount_debit"
    t.text     "narrative"
    t.text     "currency"
    t.text     "reference"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "journal_id"
    t.integer  "ledger_account_id"
    t.integer  "creditor_id"
    t.integer  "debtor_id"
  end

  create_table "journals", :force => true do |t|
    t.integer  "sequence"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "ledger_accounts", :force => true do |t|
    t.string   "account"
    t.string   "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "parties", :force => true do |t|
    t.string   "name"
    t.text     "adress"
    t.text     "remarks"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
