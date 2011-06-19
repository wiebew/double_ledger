class AddJournalIdToJournalItem < ActiveRecord::Migration
  def self.up
    add_column :journal_items, :journal_id, :integer
  end

  def self.down
    remove_column :journal_items, :journal_id
  end
end
