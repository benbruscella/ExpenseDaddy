class AddCategoryToExpense < ActiveRecord::Migration
  def self.up
    add_column :expenses, :category_id, :integer, :default => 1
  end

  def self.down
  end
end
