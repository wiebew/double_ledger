class AddNameToJournal < ActiveRecord::Migration
  def self.up
    add_column :journals, :name, :string
  end

  def self.down
    remove_column :journals, :name
  end
end
