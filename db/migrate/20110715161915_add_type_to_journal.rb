class AddTypeToJournal < ActiveRecord::Migration
  def self.up
    add_column :journals, :type, :string
    add_column :ledger_accounts, :journal_type, :string    
  end

  def self.down
    remove_column :ledger_accounts, :journal_type    
    remove_column :journals, :type
  end
end
