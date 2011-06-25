class ModifyForTypes < ActiveRecord::Migration
  def self.up
    TransactionType.create(:typename => "Debit")
    TransactionType.create(:typename => "Credit")
    add_column :transactions, :transaction_type_id, :integer, :default => 1
    Transaction.all.each do |transaction|
      transaction.transaction_type_id = 1
      transaction.save
    end
  end

  def self.down
  end
end
