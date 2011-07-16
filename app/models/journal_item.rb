class JournalItem < ActiveRecord::Base
  belongs_to :journal, :polymorphic => true
  belongs_to :ledger_account
  belongs_to :party, :foreign_key => :creditor_id
  belongs_to :party, :foreign_key => :debtor_id

end
