class Party < ActiveRecord::Base
  has_many :credits, :class_name => "JournalItem", :foreign_key => "creditor_id"
  has_many :debts, :class_name => "JournalItem",  :foreign_key => "debtor_id"
end
