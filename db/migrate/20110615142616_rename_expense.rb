class RenameExpense < ActiveRecord::Migration
  def self.up
    rename_table :expenses, :transactions
  end

  def self.down
    rename_table :transactions, :expenses
  end
end
