class CreateJournalItems < ActiveRecord::Migration
  def self.up
    create_table :journal_items do |t|
      t.integer :amount_credit
      t.integer :amount_debit
      t.text :narrative
      t.text :currency
      t.text :reference

      t.timestamps
    end
  end

  def self.down
    drop_table :journal_items
  end
end
