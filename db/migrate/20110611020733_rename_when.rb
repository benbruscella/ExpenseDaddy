class RenameWhen < ActiveRecord::Migration
  def self.up
    rename_column :expenses, :when, :spent_at
  end

  def self.down
    rename_column :expenses, :spent_at, :when
  end
end
