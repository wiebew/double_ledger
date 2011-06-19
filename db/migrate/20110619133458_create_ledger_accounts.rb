class CreateLedgerAccounts < ActiveRecord::Migration
  def self.up
    create_table :ledger_accounts do |t|
      t.string :account
      t.string :description

      t.timestamps
    end
  end

  def self.down
    drop_table :ledger_accounts
  end
end
