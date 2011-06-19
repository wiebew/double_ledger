class AddCreditorIdToJournalItem < ActiveRecord::Migration
  def self.up
    add_column :journal_items, :creditor_id, :integer
  end

  def self.down
    remove_column :journal_items, :creditor_id
  end
end
