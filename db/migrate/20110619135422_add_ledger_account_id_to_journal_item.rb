class AddLedgerAccountIdToJournalItem < ActiveRecord::Migration
  def self.up
    add_column :journal_items, :ledger_account_id, :integer
  end

  def self.down
    remove_column :journal_items, :ledger_account_id
  end
end
