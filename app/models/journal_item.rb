class JournalItem < ActiveRecord::Base
  belongs_to :journal
  belongs_to :ledger_account

end
