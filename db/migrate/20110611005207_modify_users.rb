class ModifyUsers < ActiveRecord::Migration
  def self.up
    add_column :users, :firstname, :string, :after => :email
    add_column :users, :lastname, :string, :after => :email
  end

  def self.down
    remove_column :users, :firstname
    remove_column :users, :lastname
  end
end
