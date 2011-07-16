class AddDescriptionToJournal < ActiveRecord::Migration
  def self.up
    add_column :journals, :description, :text
  end

  def self.down
    remove_column :journals, :description
  end
end
