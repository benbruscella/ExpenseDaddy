class CreateExpenses < ActiveRecord::Migration
  def self.up
    create_table :expenses do |t|
      t.integer :user_id
      t.datetime :when
      t.float :amount
      t.string :description

      t.timestamps
    end
  end

  def self.down
    drop_table :expenses
  end
end
