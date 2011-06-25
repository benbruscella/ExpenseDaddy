class CreateTransactionType < ActiveRecord::Migration
  def self.up
    create_table :transaction_types do |t|
      t.string :typename

      t.timestamps
    end

  end

  def self.down
  end
end
