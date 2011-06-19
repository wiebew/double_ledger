class AddDebtorIdToJournalItem < ActiveRecord::Migration
  def self.up
    add_column :journal_items, :debtor_id, :integer
  end

  def self.down
    remove_column :journal_items, :debtor_id
  end
end
